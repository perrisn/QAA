#!/bin/bash

#SBATCH --account=bgmp                    #REQUIRED: which account to use
#SBATCH --partition=bgmp               #REQUIRED: which partition to use
#SBATCH --mail-user=perrisn@uoregon.edu     #optional: if you'd like email
#SBATCH --mail-type=ALL                   #optional: must set email first, what type of email you want
#SBATCH --cpus-per-task=1                 #optional: number of cpus, default is 1
#SBATCH --mem=16GB                        #optional: amount of memory, default is 4GB

conda activate QAA

# /usr/bin/time -v htseq-count -c htseq_1_2a_rev.tsv --stranded=reverse \
# /projects/bgmp/perrisn/bioinfo/Bi623/QAA/STAR_scripts/alignment_file_1_2aAligned.out.sam \
# /projects/bgmp/perrisn/bioinfo/Bi623/QAA/GTF_and_FASTA/Mus_musculus.GRCm39.110.gtf

/usr/bin/time -v htseq-count -c htseq_17_3E_rev.tsv --stranded=reverse \
/projects/bgmp/perrisn/bioinfo/Bi623/QAA/STAR_scripts/alignment_file_17_3EAligned.out.sam \
/projects/bgmp/perrisn/bioinfo/Bi623/QAA/GTF_and_FASTA/Mus_musculus.GRCm39.110.gtf