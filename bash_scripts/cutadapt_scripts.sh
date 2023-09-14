#!/bin/bash

#SBATCH --account=bgmp                    #REQUIRED: which account to use
#SBATCH --partition=interactive               #REQUIRED: which partition to use
#SBATCH --reservation=bgmp-res              #optional, using a different bgmp reservation
#SBATCH --mail-user=perrisn@uoregon.edu     #optional: if you'd like email
#SBATCH --mail-type=ALL                   #optional: must set email first, what type of email you want
#SBATCH --cpus-per-task=1                 #optional: number of cpus, default is 1
#SBATCH --mem=8GB                        #optional: amount of memory, default is 4GB

adapt1="AGATCGGAAGAGCACACGTCTGAACTCCAGTCA"
adapt2="AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT"

input_1_R1="/projects/bgmp/shared/2017_sequencing/demultiplexed/1_2A_control_S1_L008_R1_001.fastq.gz"
input_1_R2="/projects/bgmp/shared/2017_sequencing/demultiplexed/1_2A_control_S1_L008_R2_001.fastq.gz"

input_17_R1="/projects/bgmp/shared/2017_sequencing/demultiplexed/17_3E_fox_S13_L008_R1_001.fastq.gz"
input_17_R2="/projects/bgmp/shared/2017_sequencing/demultiplexed/17_3E_fox_S13_L008_R2_001.fastq.gz"

#/usr/bin/time -v cutadapt -a $adapt1 -A $adapt2 -o 1_2A_R1.fastq -p 1_2A_R2.fastq $input_1_R1 $input_1_R2
/usr/bin/time -v cutadapt -a $adapt1 -A $adapt2 -o 17_3E_R1.fastq -p 17_3E_R2.fastq $input_17_R1 $input_17_R2

