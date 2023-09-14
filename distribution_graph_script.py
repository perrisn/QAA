#!/usr/bin/env  python

import matplotlib.pyplot as plt
import numpy as np

forward_file_1_2a="/projects/bgmp/perrisn/bioinfo/Bi623/QAA/1_2a_forward_paired_length.txt"
reverse_file_1_2a="/projects/bgmp/perrisn/bioinfo/Bi623/QAA/1_2a_reverse_paired_length.txt"

forward_file_17_3E="/projects/bgmp/perrisn/bioinfo/Bi623/QAA/17_3E_forward_paired_length.txt"
reverse_file_17_3E="/projects/bgmp/perrisn/bioinfo/Bi623/QAA/17_3E_reverse_paired_length.txt"

counts_lengths_1fw={}
counts_lengths_1rv={}
counts_lengths_17fw={}
counts_lengths_17rv={}
position_list=[]
count=0
length=0

with open(forward_file_1_2a,"r") as fh1, open(reverse_file_1_2a, "r") as fh2:
    for line in fh1:
        line=line.strip(" ").strip("\n")
        position_list=line.split(" ")
        count=int(position_list[0])
        length=int(position_list[1])
        if length not in counts_lengths_1fw:
            counts_lengths_1fw[length]=count
    for line in fh2:
        line=line.strip(" ").strip("\n")
        position_list=line.split(" ")
        count=int(position_list[0])
        length=int(position_list[1])
        if length not in counts_lengths_1rv:
            counts_lengths_1rv[length]=count

with open(forward_file_17_3E,"r") as fh3, open(reverse_file_17_3E, "r") as fh4:
    for line in fh3:
        line=line.strip(" ").strip("\n")
        position_list=line.split(" ")
        count=int(position_list[0])
        length=int(position_list[1])
        if length not in counts_lengths_17fw:
            counts_lengths_17fw[length]=count
    for line in fh4:
        line=line.strip(" ").strip("\n")
        position_list=line.split(" ")
        count=int(position_list[0])
        length=int(position_list[1])
        if length not in counts_lengths_17rv:
            counts_lengths_17rv[length]=count
    
# plt.bar(counts_lengths_1fw.keys(), counts_lengths_1fw.values(), alpha = 0.5, color = 'yellow', label='R1')
# plt.bar(counts_lengths_1rv.keys(), counts_lengths_1rv.values(), alpha = 0.5, color= 'magenta', label='R2')
# plt.yscale('log')
# plt.title('Read Length Distribution for R1 and R2 of 1_2a_control')
# plt.xlabel('Length')
# plt.ylabel('Count')
# plt.legend(loc="upper left")
# plt.savefig(f'1_2a_distribution.png')

plt.bar(counts_lengths_17fw.keys(), counts_lengths_17fw.values(), alpha = 0.5, color = 'red', label='R1')
plt.bar(counts_lengths_17rv.keys(), counts_lengths_17rv.values(), alpha = 0.5, color= 'blue', label='R2')
plt.yscale('log')
plt.title('Read Length Distribution for R1 and R2 of 17_3E_fox')
plt.xlabel('Length')
plt.ylabel('Count')
plt.legend(loc="upper left")
plt.savefig(f'17_3E_distribution.png')

