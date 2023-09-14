#!/bin/bash 

#zcat trimmed_data/1_2a_reverse_paired.fq.gz  | grep -A 1 "^@K" | grep -v "@K" | grep -v "^--" \
#| awk '{print length ($0)}' | sort -n | uniq -c > 1_2a_reverse_paired_length.txt

# zcat trimmed_data/1_2a_trim_forward_paired.fq.gz  | grep -A 1 "^@K" | grep -v "@K" | grep -v "^--" \
# | awk '{print length ($0)}' | sort -n | uniq -c > 1_2a_forward_paired_length.txt

# zcat trimmed_data/17_3E_reverse_paired.fq.gz  | grep -A 1 "^@K" | grep -v "@K" | grep -v "^--" \
# | awk '{print length ($0)}' | sort -n | uniq -c > 17_3E_reverse_paired_length.txt

zcat trimmed_data/17_3E_trim_forward_paired.fq.gz | grep -A 1 "^@K" | grep -v "@K" | grep -v "^--" \
| awk '{print length ($0)}' | sort -n | uniq -c > 17_3E_forward_paired_length.txt