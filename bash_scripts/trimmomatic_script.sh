#!/bin/bash

#SBATCH --account=bgmp                    #REQUIRED: which account to use
#SBATCH --partition=interactive               #REQUIRED: which partition to use
#SBATCH --reservation=bgmp-res              #optional, using a different bgmp reservation
#SBATCH --mail-user=perrisn@uoregon.edu     #optional: if you'd like email
#SBATCH --mail-type=ALL                   #optional: must set email first, what type of email you want
#SBATCH --cpus-per-task=4                 #optional: number of cpus, default is 1
#SBATCH --mem=8GB                        #optional: amount of memory, default is 4GB

input_file_1_R1="/projects/bgmp/perrisn/bioinfo/Bi623/QAA/1_2A_R1.fastq.gz"
input_file_1_R2="/projects/bgmp/perrisn/bioinfo/Bi623/QAA/1_2A_R2.fastq.gz"
input_file_17_R1="/projects/bgmp/perrisn/bioinfo/Bi623/QAA/17_3E_R1.fastq.gz"
input_file_17_R2="/projects/bgmp/perrisn/bioinfo/Bi623/QAA/17_3E_R2.fastq.gz"


# trimmomatic PE $input_file_1_R1 $input_file_1_R2 1_2a_trim_forward_paired.fq.gz \
# 1_2a_forward_unpaired.fq.gz 1_2a_reverse_paired.fq.gz 1_2a_reverse_unpaired.fq.gz \
# LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35

trimmomatic PE $input_file_17_R1 $input_file_17_R2 17_3E_trim_forward_paired.fq.gz \
17_3E_forward_unpaired.fq.gz 17_3E_reverse_paired.fq.gz 17_3E_reverse_unpaired.fq.gz \
LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35