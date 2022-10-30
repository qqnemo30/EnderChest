#include <stdio.h>
int main()
{	char c;
char line[100] = { '\0' }, longest_word[50] = { '\0' }, shortest_word[50] = { '\0' };
	int i;
	int word_length_current, word_length_max, word_length_min; 
	int word_state;
	int letter;
	int min_word_index, max_word_index; 
	word_state = 1;
	word_length_current = 0; word_length_max = 0; word_length_min = 150;
	gets(line);
	
	for(i = 0; line[i]; i++)
	{	c = line[i];
		letter = ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'));
		if(word_state)
		{	if(letter)
			{	word_length_current++;
				if(!line[i+1])
				{	i++;
					word_length(&word_length_max, &word_length_min, &word_length_current, i, &max_word_index, &min_word_index);
				}		
			}
			else
			{	word_state = 0;
				word_length(&word_length_max, &word_length_min, &word_length_current, i, &max_word_index, &min_word_index);
				word_length_current = 0;
			}
		}
		else if(letter)
		{	word_state = 1;
			word_length_current++;
		}
	}

	for(i = 0; i < word_length_max; i++)
	{	longest_word[i] = line[max_word_index - word_length_max + i];
	}
	for(i = 0; i < word_length_min; i++)
	{	shortest_word[i] = line[min_word_index - word_length_min + i];
	}
	printf("%s\n%s\n", longest_word, shortest_word);
	return 0;
}

int word_length(int* current_max_length, int* current_min_length, int* possible_length,
	int i, int* longest_word_index, int* shortest_word_index)
{
	if (*possible_length)
	{
		if (*possible_length < *current_min_length)
		{
			*current_min_length = *possible_length;
			*shortest_word_index = i;
		}
		if (*possible_length > *current_max_length)
		{
			*current_max_length = *possible_length;
			*longest_word_index = i;
		}
	}
	return 0;
}

