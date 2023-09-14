#!/bin/bash

#/usr/bin/time -v fastqc -o fastqc_output /projects/bgmp/shared/2017_sequencing/demultiplexed/1_2A_control_S1_L008_R1_001.fastq.gz

#/usr/bin/time -v fastqc -o fastqc_output /projects/bgmp/shared/2017_sequencing/demultiplexed/1_2A_control_S1_L008_R2_001.fastq.gz

#/usr/bin/time -v fastqc -o fastqc_output /projects/bgmp/shared/2017_sequencing/demultiplexed/17_3E_fox_S13_L008_R1_001.fastq.gz

#/usr/bin/time -v fastqc -o fastqc_output /projects/bgmp/shared/2017_sequencing/demultiplexed/17_3E_fox_S13_L008_R2_001.fastq.gz

#/usr/bin/time -v ./part1_script.py -f /projects/bgmp/shared/2017_sequencing/demultiplexed/1_2A_control_S1_L008_R1_001.fastq.gz \
#-l 101 -o 1_2a_control_S1

#/usr/bin/time -v ./part1_script.py -f /projects/bgmp/shared/2017_sequencing/demultiplexed/1_2A_control_S1_L008_R2_001.fastq.gz \
#-l 101 -o 1_2a_control_S1_R2

#/usr/bin/time -v ./part1_script.py -f /projects/bgmp/shared/2017_sequencing/demultiplexed/17_3E_fox_S13_L008_R1_001.fastq.gz \
#-l 101 -o 17_3E_fox_R1

/usr/bin/time -v ./part1_script.py -f /projects/bgmp/shared/2017_sequencing/demultiplexed/17_3E_fox_S13_L008_R2_001.fastq.gz \
-l 101 -o 17_3E_fox_R2 