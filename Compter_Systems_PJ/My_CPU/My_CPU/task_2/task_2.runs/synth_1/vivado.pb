
y
Command: %s
53*	vivadotcl2H
4synth_design -top processor -part xc7vx485tffg1157-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
	xc7vx485t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
	xc7vx485t2default:defaultZ17-349h px? 
?
%s*synth2?
rStarting Synthesize : Time (s): cpu = 00:00:07 ; elapsed = 00:00:06 . Memory (MB): peak = 389.949 ; gain = 98.934
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
	processor2default:default2R
<D:/CSAPP_Vivado/task_2/task_2.srcs/sources_1/new/processor.v2default:default2
22default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2
ram2default:default2L
6D:/CSAPP_Vivado/task_2/task_2.srcs/sources_1/new/ram.v2default:default2
22default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
ram2default:default2
12default:default2
12default:default2L
6D:/CSAPP_Vivado/task_2/task_2.srcs/sources_1/new/ram.v2default:default2
22default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
regfile2default:default2P
:D:/CSAPP_Vivado/task_2/task_2.srcs/sources_1/new/regfile.v2default:default2
22default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
regfile2default:default2
22default:default2
12default:default2P
:D:/CSAPP_Vivado/task_2/task_2.srcs/sources_1/new/regfile.v2default:default2
22default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	processor2default:default2
32default:default2
12default:default2R
<D:/CSAPP_Vivado/task_2/task_2.srcs/sources_1/new/processor.v2default:default2
22default:default8@Z8-256h px? 
?
%s*synth2?
sFinished Synthesize : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 441.977 ; gain = 150.961
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 441.977 ; gain = 150.961
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Loading part: xc7vx485tffg1157-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 441.977 ; gain = 150.961
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
Loading part %s157*device2&
xc7vx485tffg1157-12default:defaultZ21-403h px? 
?
!inferring latch for variable '%s'327*oasys2

reg_rB_reg2default:default2R
<D:/CSAPP_Vivado/task_2/task_2.srcs/sources_1/new/processor.v2default:default2
542default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
reg_valC_reg2default:default2R
<D:/CSAPP_Vivado/task_2/task_2.srcs/sources_1/new/processor.v2default:default2
552default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 441.977 ; gain = 150.961
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              16K Bit         RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     32 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 16    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
>
%s
*synth2&
Module processor 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
Module ram 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              16K Bit         RAMs := 1     
2default:defaulth p
x
? 
<
%s
*synth2$
Module regfile 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 8     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     32 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 16    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2o
[Part Resources:
DSPs: 2800 (col length:140)
BRAMs: 2060 (col length: RAMB18 140 RAMB36 70)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg7_reg[16]2default:default2
FDCE2default:default2#
u2/reg7_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg7_reg[17]2default:default2
FDCE2default:default2#
u2/reg7_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg7_reg[18]2default:default2
FDCE2default:default2#
u2/reg7_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg7_reg[19]2default:default2
FDCE2default:default2#
u2/reg7_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg7_reg[20]2default:default2
FDCE2default:default2#
u2/reg7_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg7_reg[21]2default:default2
FDCE2default:default2#
u2/reg7_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg7_reg[22]2default:default2
FDCE2default:default2#
u2/reg7_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg7_reg[23]2default:default2
FDCE2default:default2#
u2/reg7_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg7_reg[24]2default:default2
FDCE2default:default2#
u2/reg7_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg7_reg[25]2default:default2
FDCE2default:default2#
u2/reg7_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg7_reg[26]2default:default2
FDCE2default:default2#
u2/reg7_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg7_reg[27]2default:default2
FDCE2default:default2#
u2/reg7_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg7_reg[28]2default:default2
FDCE2default:default2#
u2/reg7_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg7_reg[29]2default:default2
FDCE2default:default2#
u2/reg7_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg7_reg[30]2default:default2
FDCE2default:default2#
u2/reg7_reg[31]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2%
\u2/reg7_reg[31] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg6_reg[16]2default:default2
FDCE2default:default2#
u2/reg6_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg6_reg[17]2default:default2
FDCE2default:default2#
u2/reg6_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg6_reg[18]2default:default2
FDCE2default:default2#
u2/reg6_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg6_reg[19]2default:default2
FDCE2default:default2#
u2/reg6_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg6_reg[20]2default:default2
FDCE2default:default2#
u2/reg6_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg6_reg[21]2default:default2
FDCE2default:default2#
u2/reg6_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg6_reg[22]2default:default2
FDCE2default:default2#
u2/reg6_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg6_reg[23]2default:default2
FDCE2default:default2#
u2/reg6_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg6_reg[24]2default:default2
FDCE2default:default2#
u2/reg6_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg6_reg[25]2default:default2
FDCE2default:default2#
u2/reg6_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg6_reg[26]2default:default2
FDCE2default:default2#
u2/reg6_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg6_reg[27]2default:default2
FDCE2default:default2#
u2/reg6_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg6_reg[28]2default:default2
FDCE2default:default2#
u2/reg6_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg6_reg[29]2default:default2
FDCE2default:default2#
u2/reg6_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg6_reg[30]2default:default2
FDCE2default:default2#
u2/reg6_reg[31]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2%
\u2/reg6_reg[31] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg5_reg[16]2default:default2
FDCE2default:default2#
u2/reg5_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg5_reg[17]2default:default2
FDCE2default:default2#
u2/reg5_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg5_reg[18]2default:default2
FDCE2default:default2#
u2/reg5_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg5_reg[19]2default:default2
FDCE2default:default2#
u2/reg5_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg5_reg[20]2default:default2
FDCE2default:default2#
u2/reg5_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg5_reg[21]2default:default2
FDCE2default:default2#
u2/reg5_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg5_reg[22]2default:default2
FDCE2default:default2#
u2/reg5_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg5_reg[23]2default:default2
FDCE2default:default2#
u2/reg5_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg5_reg[24]2default:default2
FDCE2default:default2#
u2/reg5_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg5_reg[25]2default:default2
FDCE2default:default2#
u2/reg5_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg5_reg[26]2default:default2
FDCE2default:default2#
u2/reg5_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg5_reg[27]2default:default2
FDCE2default:default2#
u2/reg5_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg5_reg[28]2default:default2
FDCE2default:default2#
u2/reg5_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg5_reg[29]2default:default2
FDCE2default:default2#
u2/reg5_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg5_reg[30]2default:default2
FDCE2default:default2#
u2/reg5_reg[31]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2%
\u2/reg5_reg[31] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg4_reg[16]2default:default2
FDCE2default:default2#
u2/reg4_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg4_reg[17]2default:default2
FDCE2default:default2#
u2/reg4_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg4_reg[18]2default:default2
FDCE2default:default2#
u2/reg4_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg4_reg[19]2default:default2
FDCE2default:default2#
u2/reg4_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg4_reg[20]2default:default2
FDCE2default:default2#
u2/reg4_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg4_reg[21]2default:default2
FDCE2default:default2#
u2/reg4_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg4_reg[22]2default:default2
FDCE2default:default2#
u2/reg4_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg4_reg[23]2default:default2
FDCE2default:default2#
u2/reg4_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg4_reg[24]2default:default2
FDCE2default:default2#
u2/reg4_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg4_reg[25]2default:default2
FDCE2default:default2#
u2/reg4_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg4_reg[26]2default:default2
FDCE2default:default2#
u2/reg4_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg4_reg[27]2default:default2
FDCE2default:default2#
u2/reg4_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg4_reg[28]2default:default2
FDCE2default:default2#
u2/reg4_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg4_reg[29]2default:default2
FDCE2default:default2#
u2/reg4_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg4_reg[30]2default:default2
FDCE2default:default2#
u2/reg4_reg[31]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2%
\u2/reg4_reg[31] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg3_reg[16]2default:default2
FDCE2default:default2#
u2/reg3_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg3_reg[17]2default:default2
FDCE2default:default2#
u2/reg3_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg3_reg[18]2default:default2
FDCE2default:default2#
u2/reg3_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg3_reg[19]2default:default2
FDCE2default:default2#
u2/reg3_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg3_reg[20]2default:default2
FDCE2default:default2#
u2/reg3_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg3_reg[21]2default:default2
FDCE2default:default2#
u2/reg3_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg3_reg[22]2default:default2
FDCE2default:default2#
u2/reg3_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg3_reg[23]2default:default2
FDCE2default:default2#
u2/reg3_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg3_reg[24]2default:default2
FDCE2default:default2#
u2/reg3_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg3_reg[25]2default:default2
FDCE2default:default2#
u2/reg3_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg3_reg[26]2default:default2
FDCE2default:default2#
u2/reg3_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg3_reg[27]2default:default2
FDCE2default:default2#
u2/reg3_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg3_reg[28]2default:default2
FDCE2default:default2#
u2/reg3_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg3_reg[29]2default:default2
FDCE2default:default2#
u2/reg3_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg3_reg[30]2default:default2
FDCE2default:default2#
u2/reg3_reg[31]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2%
\u2/reg3_reg[31] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg2_reg[16]2default:default2
FDCE2default:default2#
u2/reg2_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg2_reg[17]2default:default2
FDCE2default:default2#
u2/reg2_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg2_reg[18]2default:default2
FDCE2default:default2#
u2/reg2_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg2_reg[19]2default:default2
FDCE2default:default2#
u2/reg2_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg2_reg[20]2default:default2
FDCE2default:default2#
u2/reg2_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg2_reg[21]2default:default2
FDCE2default:default2#
u2/reg2_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg2_reg[22]2default:default2
FDCE2default:default2#
u2/reg2_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg2_reg[23]2default:default2
FDCE2default:default2#
u2/reg2_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg2_reg[24]2default:default2
FDCE2default:default2#
u2/reg2_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg2_reg[25]2default:default2
FDCE2default:default2#
u2/reg2_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg2_reg[26]2default:default2
FDCE2default:default2#
u2/reg2_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg2_reg[27]2default:default2
FDCE2default:default2#
u2/reg2_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg2_reg[28]2default:default2
FDCE2default:default2#
u2/reg2_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg2_reg[29]2default:default2
FDCE2default:default2#
u2/reg2_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg2_reg[30]2default:default2
FDCE2default:default2#
u2/reg2_reg[31]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2%
\u2/reg2_reg[31] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg1_reg[16]2default:default2
FDCE2default:default2#
u2/reg1_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg1_reg[17]2default:default2
FDCE2default:default2#
u2/reg1_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg1_reg[18]2default:default2
FDCE2default:default2#
u2/reg1_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg1_reg[19]2default:default2
FDCE2default:default2#
u2/reg1_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg1_reg[20]2default:default2
FDCE2default:default2#
u2/reg1_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg1_reg[21]2default:default2
FDCE2default:default2#
u2/reg1_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg1_reg[22]2default:default2
FDCE2default:default2#
u2/reg1_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg1_reg[23]2default:default2
FDCE2default:default2#
u2/reg1_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg1_reg[24]2default:default2
FDCE2default:default2#
u2/reg1_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
u2/reg1_reg[25]2default:default2
FDCE2default:default2#
u2/reg1_reg[31]2default:defaultZ8-3886h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2%
\u2/reg1_reg[31] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2%
\u2/reg0_reg[31] 2default:defaultZ8-3333h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
u2/reg0_reg[31]2default:default2
	processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
u2/reg1_reg[31]2default:default2
	processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
u2/reg2_reg[31]2default:default2
	processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
u2/reg3_reg[31]2default:default2
	processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
u2/reg4_reg[31]2default:default2
	processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
u2/reg5_reg[31]2default:default2
	processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
u2/reg6_reg[31]2default:default2
	processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
u2/reg7_reg[31]2default:default2
	processor2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 754.816 ; gain = 463.801
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
e
%s*synth2M
9
Block RAM: Preliminary Mapping  Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name | RTL Object | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth px? 
?
%s*synth2?
?+------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|ram:        | memory_reg | 512 x 32(READ_FIRST)   | W |   | 512 x 32(WRITE_FIRST)  |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px? 
?
%s*synth2?
?+------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth px? 
?
%s*synth2?
?Note: The tale above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 754.816 ; gain = 463.801
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
N
%s
*synth26
"
Block RAM: Final Mapping  Report
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name | RTL Object | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|ram:        | memory_reg | 512 x 32(READ_FIRST)   | W |   | 512 x 32(WRITE_FIRST)  |   | R | Port A and B     | 1      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2!
u1/memory_reg2default:defaultZ8-4480h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 754.816 ; gain = 463.801
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 754.816 ; gain = 463.801
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 754.816 ; gain = 463.801
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 754.816 ; gain = 463.801
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 754.816 ; gain = 463.801
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 754.816 ; gain = 463.801
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 754.816 ; gain = 463.801
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|1     |BUFG     |     1|
2default:defaulth px? 
F
%s*synth2.
|2     |LUT3     |     1|
2default:defaulth px? 
F
%s*synth2.
|3     |LUT4     |     7|
2default:defaulth px? 
F
%s*synth2.
|4     |LUT5     |    16|
2default:defaulth px? 
F
%s*synth2.
|5     |LUT6     |     1|
2default:defaulth px? 
F
%s*synth2.
|6     |RAMB18E1 |     1|
2default:defaulth px? 
F
%s*synth2.
|7     |FDCE     |   128|
2default:defaulth px? 
F
%s*synth2.
|8     |FDRE     |    20|
2default:defaulth px? 
F
%s*synth2.
|9     |LD       |    20|
2default:defaulth px? 
F
%s*synth2.
|10    |IBUF     |    44|
2default:defaulth px? 
F
%s*synth2.
|11    |OBUF     |   256|
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
O
%s
*synth27
#+------+---------+--------+------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |Instance |Module  |Cells |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+---------+--------+------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |top      |        |   495|
2default:defaulth p
x
? 
O
%s
*synth27
#|2     |  u1     |ram     |     3|
2default:defaulth p
x
? 
O
%s
*synth27
#|3     |  u2     |regfile |   151|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+---------+--------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 754.816 ; gain = 463.801
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 10 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 754.816 ; gain = 463.801
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 754.816 ; gain = 463.801
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
652default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
!Unisim Transformation Summary:
%s111*project2[
G  A total of 20 instances were transformed.
  LD => LDCE: 20 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1252default:default2
102default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:212default:default2
00:00:222default:default2
866.9572default:default2
588.6482default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2L
8D:/CSAPP_Vivado/task_2/task_2.runs/synth_1/processor.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2|
hExecuting : report_utilization -file processor_utilization_synth.rpt -pb processor_utilization_synth.pb
2default:defaulth px? 
?
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.294 . Memory (MB): peak = 866.957 ; gain = 0.000
*commonh px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Jun  9 20:50:04 20222default:defaultZ17-206h px? 


End Record