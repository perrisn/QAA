#!/bin/bash

#SBATCH --account=bgmp                    #REQUIRED: which account to use
#SBATCH --partition=bgmp                  #REQUIRED: which partition to use
#SBATCH --mail-user=perrisn@uoregon.edu     #optional: if you'd like email
#SBATCH --mail-type=ALL                   #optional: must set email first, what type of email you want
#SBATCH --cpus-per-task=8                 #optional: number of cpus, default is 1
#SBATCH --mem=32GB                        #optional: amount of memory, default is 4GB

conda activate QAA

# /usr/bin/time -v STAR --runThreadN 8 --runMode alignReads \
# --outFilterMultimapNmax 3 \
# --outSAMunmapped Within KeepPairs \
# --alignIntronMax 1000000 --alignMatesGapMax 1000000 \
# --readFilesCommand zcat \
# --readFilesIn  /projects/bgmp/perrisn/bioinfo/Bi623/QAA/trimmed_data/1_2a_trim_forward_paired.fq.gz /projects/bgmp/perrisn/bioinfo/Bi623/QAA/trimmed_data/1_2a_reverse_paired.fq.gz \
# --genomeDir /projects/bgmp/perrisn/bioinfo/Bi623/QAA/Mus_musculus.GRCm39.dna.ens110.STAR_2.7.10b/ \
# --outFileNamePrefix alignment_file_1_2a


/usr/bin/time -v STAR --runThreadN 8 --runMode alignReads \
--outFilterMultimapNmax 3 \
--outSAMunmapped Within KeepPairs \
--alignIntronMax 1000000 --alignMatesGapMax 1000000 \
--readFilesCommand zcat \
--readFilesIn /projects/bgmp/perrisn/bioinfo/Bi623/QAA/trimmed_data/17_3E_trim_forward_paired.fq.gz /projects/bgmp/perrisn/bioinfo/Bi623/QAA/trimmed_data/17_3E_reverse_paired.fq.gz \
--genomeDir /projects/bgmp/perrisn/bioinfo/Bi623/QAA/Mus_musculus.GRCm39.dna.ens110.STAR_2.7.10b/ \
--outFileNamePrefix alignment_file_17_3E