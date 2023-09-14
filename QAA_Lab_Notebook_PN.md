# QAA Lab Notebook 

## Part 1
### File paths: 
Full file pathway for four files on Talapas: 
/projects/bgmp/shared/2017_sequencing/demultiplexed/1_2A_control_S1_L008_R1_001.fastq.gz
/projects/bgmp/shared/2017_sequencing/demultiplexed/1_2A_control_S1_L008_R2_001.fastq.gz
/projects/bgmp/shared/2017_sequencing/demultiplexed/17_3E_fox_S13_L008_R1_001.fastq.gz
/projects/bgmp/shared/2017_sequencing/demultiplexed/17_3E_fox_S13_L008_R2_001.fastq.gz

FastQC documentation: fastqc -h

### Creating QAA Environment
conda create --name QAA
conda activate QAA

### Loading FastQC module: 

module spider fastqc
module load fastqc/0.11.5
ml

### Running FastQC:
1_2A_control samples: 
fastqc -o fastqc_output/1a_R1 /projects/bgmp/shared/2017_sequencing/demultiplexed/1_2A_control_S1_L008_R1_001.fastq.gz
1 CPU alloted 
Percent of CPU this job got: 96% 
Elapsed (wall clock) time (h:mm:ss or m:ss): 0:48.80 
fastqc -o fastqc_output/1a_R1 /projects/bgmp/shared/2017_sequencing/demultiplexed/1_2A_control_S1_L008_R2_001.fastq.gz 
1 CPU alloted 
Percent of CPU this job got: 98% 
Elapsed (wall clock) time (h:mm:ss or m:ss): 0:49.51 

17_3E_fox samples: 
fastqc -o fastqc_output/1a_R1 /projects/bgmp/shared/2017_sequencing/demultiplexed/17_3E_fox_S13_L008_R1_001.fastq.gz 
1 CPU alloted 
Percent of CPU this job got: 99% 
Elapsed (wall clock) time (h:mm:ss or m:ss): 1:06.44 
fastqc -o fastqc_output/1a_R1 /projects/bgmp/shared/2017_sequencing/demultiplexed/17_3E_fox_S13_L008_R2_001.fastq.gz 
1 CPU alloted 
Percent of CPU this job got: 98% 
Elapsed (wall clock) time (h:mm:ss or m:ss): 1:06.93 

### Running python script from demultiplexing 
1_2A_control samples:
./part1_script.py -f /projects/bgmp/shared/2017_sequencing/demultiplexed/1_2A_control_S1_L008_R1_001.fastq.gz -l 101 -o 1_2a_control_S1
1 CPU alloted
Percent of CPU this job got: 95%
Elapsed (wall clock) time (h:mm:ss or m:ss): 3:24.76
./part1_script.py -f /projects/bgmp/shared/2017_sequencing/demultiplexed/1_2A_control_S1_L008_R2_001.fastq.gz -l 101 -o 1_2a_control_S1_R2
1 CPU alloted
Percent of CPU this job got: 99%
Elapsed (wall clock) time (h:mm:ss or m:ss): 3:13.29

17_3E_fox samples:
./part1_script.py -f /projects/bgmp/shared/2017_sequencing/demultiplexed/17_3E_fox_S13_L008_R1_001.fastq.gz -l 101 -o 17_3E_fox_R1
1 CPU alloted
Percent of CPU this job got: 99%
Elapsed (wall clock) time (h:mm:ss or m:ss): 4:24.84
./part1_script.py -f /projects/bgmp/shared/2017_sequencing/demultiplexed/17_3E_fox_S13_L008_R2_001.fastq.gz -l 101 -o 17_3E_fox_R2
1 CPU alloted
Percent of CPU this job got: 99%
Elapsed (wall clock) time (h:mm:ss or m:ss): 4:28.10

## Part 2
### Checking if adapters are in the file 

zcat /projects/bgmp/shared/2017_sequencing/demultiplexed/1_2A_control_S1_L008_R1_001.fastq.gz | grep "AGATCGGAAGAGCACACGTCTGAACTCCAGTCA" | head

zcat /projects/bgmp/shared/2017_sequencing/demultiplexed/1_2A_control_S1_L008_R2_001.fastq.gz | grep "AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT" | head

zcat /projects/bgmp/shared/2017_sequencing/demultiplexed/17_3E_fox_S13_L008_R1_001.fastq.gz | grep "AGATCGGAAGAGCACACGTCTGAACTCCAGTCA" | head

zcat /projects/bgmp/shared/2017_sequencing/demultiplexed/17_3E_fox_S13_L008_R2_001.fastq.gz | grep "AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT" | head

Adapters were present in all four files. 

### Running cutadapt
Cutadapt documentation: https://cutadapt.readthedocs.io/en/stable/
Installed: conda install cutadapt

Ran using following script: cutadapt_scripts.sh

1_2a run time: Elapsed (wall clock) time (h:mm:ss or m:ss): 0:48.94
17_3E run time: Elapsed (wall clock) time (h:mm:ss or m:ss): 1:12.51

### Running Trimmomatic 
Trimmomatic documentation: http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/TrimmomaticManual_V0.32.pdf
Installed: conda install trimmomatic

Had to zip my files using the following command before running Trimmomatic because it takes zipped files as input: 
gzip 1_2A_R1.fastq
gzip 1_2A_R2.fastq
gzip 17_3E_R1.fastq
gzip 17_3E_R2.fastq

Ran using following script: trimmomatic_script.sh

## Part 3

### Installing software
STAR documentation: https://physiology.med.cornell.edu/faculty/skrabanek/lab/angsd/lecture_notes/STARmanual.pdf
conda install star -c bioconda
STAR --version
STAR version: 2.7.10b

NumPy documentation: https://numpy.org/doc/
conda install numpy
python -c "import numpy; print(numpy.__version_)"
numpy version: 1.25.2

matplotlib documentation: https://matplotlib.org/stable/index.html
conda install matplotlib 
python -c "import matplotlib; print(matplotlib.__version__)" 
matplotlib version: 3.7.2

htseq-count documentation: https://htseq.readthedocs.io/en/release_0.11.1/count.html
conda install -c bioconda htseq
htseq-count --version
htseq version: 2.0.3
NOTE: Had trouble with assigning variables and running through htseq, had to use full file name in the script. 

### Getting Ensembl files 

Mouse genome FASTA files: https://ftp.ensembl.org/pub/release-110/fasta/mus_musculus/dna/Mus_musculus.GRCm39.dna.primary_assembly.fa.gz

Mouse GTF File: https://ftp.ensembl.org/pub/release-110/gtf/mus_musculus

### Making STAR databases 

PS8 helpful for learning how to run STAR again: https://github.com/2023-BGMP/ps8-perrisn

Ran using following script: STAR_database.sh
Ran alignment using following script: STAR_alignment.sh

### Determining mapped v. unmapped on SAM files 

Ran using following script: STAR_python_script.py

Mapped v. unmapped reads for 1_2a:
mapped_reads=15627427
unmapped_reads=305259

Mapped v. unmapped reads for 17_3E:
mapped_reads=21532803
unmapped_reads=948729

### Running HTseq and determined mapped reads

From ICA4 script run on HTseq: 

Read1 mapped: grep -v "^__" htseq_1_2a.tsv | awk '{sum+=$2}END{print sum}'
Read2 mapped:  grep -v "^__" htseq_1_2a_rev.tsv | awk '{sum+=$2}END{print sum}'
total Read1: awk '{sum+=$2}END{print sum}' htseq_1_2a.tsv
total Read2: awk '{sum+=$2}END{print sum}' htseq_1_2a_rev.tsv

Number mapped 1_2a: 
Read 1: 306397
Read 2: 6876756
total Read1: 7966343
total Read2: 7966343

Read1 mapped: grep -v "^__" htseq_17_3E.tsv | awk '{sum+=$2}END{print sum}'
Read2 mapped:  grep -v "^__" htseq_17_3E.tsv | awk '{sum+=$2}END{print sum}'
total Read1: awk '{sum+=$2}END{print sum}' htseq_17_3E.tsv
total Read2: awk '{sum+=$2}END{print sum}' htseq_17_3E_rev.tsv

Number mapped 17_3E: 
Read 1: 436515
Read 2: 8952040
total Read 1: 11240766
total Read 2: 11240766