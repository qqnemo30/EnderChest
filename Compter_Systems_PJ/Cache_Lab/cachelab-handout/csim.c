
#include "cachelab.h"
#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include <unistd.h>

extern char *optarg;
int hits = 0;    int misses = 0;    int evictions = 0;
int opt, s, E, b;    int detail = 0;

typedef struct    // 行结构体，存放的具体数据不重要所以不需要放入结构体
{
    int valid_bit;
    int tag;
    int LRU_counter;
} cache_line;

cache_line **cache = NULL;    // 数组cache[S][E]动态空间分配

void usage_info()    /* 当输入-h指令时，输出usage_info */
{
    printf("Usage: ./csim-ref [-hv] -s <num> -E <num> -b <num> -t <file>\n");
    printf("Options:\n");
    printf("  -h         Print this help message.\n");
    printf("  -v         Optional verbose flag.\n");
    printf("  -s <num>   Number of set index bits.\n");
    printf("  -E <num>   Number of lines per set.\n");
    printf("  -b <num>   Number of block offset bits.\n");
    printf("  -t <file>  Trace file.\n");
    printf("\n");
    printf("Examples:\n");
    printf("  linux>  ./csim-ref -s 4 -E 1 -b 4 -t traces/yi.trace\n");
    printf("  linux>  ./csim-ref -v -s 8 -E 2 -b 4 -t traces/yi.trace\n");
}

void update_cache(unsigned address)
{
    int hit_flag = 0;    int S = 1 << s;
    unsigned address_tag = address >> (s + b);
    unsigned address_set_index = (address >> b) & (0xffffffff >> (32 - s));
    int max_LRU_counter = 0;    int max_LRU_counter_index = 0;

    for (int j = 0; j < E; j++) {
        if ((cache[address_set_index][j].tag == address_tag) && (cache[address_set_index][j].valid_bit == 1)) {
            hits++;    hit_flag = 1;
            cache[address_set_index][j].LRU_counter = 0;
            if (detail)
                printf(" hit");
        } 
    }

    if (!hit_flag) {
        misses++;
        if (detail)
            printf(" miss");
        for (int j = 0; j < E; j++) {
            if (max_LRU_counter < cache[address_set_index][j].LRU_counter) {
                max_LRU_counter = cache[address_set_index][j].LRU_counter;
                max_LRU_counter_index = j;
            }   
        }
        cache[address_set_index][max_LRU_counter_index].tag = address_tag;
        cache[address_set_index][max_LRU_counter_index].LRU_counter = 0;
        if (cache[address_set_index][max_LRU_counter_index].valid_bit) {
            evictions++;
            if (detail)
                printf(" eviction");
        }
        cache[address_set_index][max_LRU_counter_index].valid_bit = 1;
    }

    for (int i = 0; i < S; i++)
        for (int j = 0; j < E; j++)
            cache[i][j].LRU_counter++;
    
    hit_flag = 0;
}


int main(int argc, char* argv[])
{
    char *trace_file; 
    while ((opt = getopt(argc, argv, "hvs:E:b:t:")) != -1)    /* looping over arguments */ 
    {   /* determine which argument it’s processing */
        switch (opt) {
            case 'h': usage_info();  break;
            case 'v': detail = 1;  break;
            case 's': s = atoi(optarg);  break; 
            case 'E': E = atoi(optarg);  break;
            case 'b': b = atoi(optarg);  break;
            case 't': trace_file = optarg;  break;
            default: printf("wrong argument\n");  break; 
        } 
    }

    int S = 1 << s;
    cache = (cache_line**)malloc(sizeof(cache_line*) * S);
	for (int i = 0; i < S; i++)
	    *(cache + i) = (cache_line*)malloc(sizeof(cache_line) * E);

    for (int i = 0; i < S; i++)
        for (int j = 0; j < E; j++) {
            cache[i][j].valid_bit = 0;
            cache[i][j].tag = 0x00000000;
            cache[i][j].LRU_counter = 0;
        }
    
    FILE *pFile;    //pointer to FILE object	
    pFile = fopen(trace_file,"r"); //open file for reading	
    char identifier = 0;    unsigned address = 0;    int size = 0;	
    // Reading lines like " M 20,1" or " L 19,3"	
    while (fscanf(pFile," %c %x,%d\n", &identifier, &address, &size)>0)	
    {	
        if (detail)
            printf("%c %x,%d", identifier, address, size);  
        switch (identifier) {
            case 'L': update_cache(address);  break;
            case 'M': update_cache(address);  // 此处不需要break，需要继续执行
            case 'S': update_cache(address);  break;
            default:  break;
        }
        if (detail)
            printf("\n");
    }	
    fclose(pFile);    //remember to close file when done
     
    printSummary(hits, misses, evictions);
    free(cache);
    return 0;
}



