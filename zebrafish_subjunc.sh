#!/bin/bash

#SBATCH -n 4                            #The number of cores should match the '--threads' parameter of subjunc
#SBATCH -N 1                            #Run on 1 node
#SBATCH --mem=12000                     

#SBATCH -t 180
#SBATCH -p serial_requeue                

#SBATCH -o index_output
#SBATCH -e index_error
#SBATCH --mail-type=ALL
#SBATCH --mail-user=armonrahim@college.harvard.edu

# --------------
# Fill this part out (and the specific fields above)
source /n/scrb152/setup.sh
# cd /scratch
~/software/subread-1.4.6-p3-source/bin/subjunc \
        --index /n/schierfs1/projects/nanog2016/zebrafish.subread_index \
        --read /n/schierfs1/data/RNA-Seq/nanog2016/Lane1.indexlength_6/Fastq/mutant-shield1_S10.R1.fastq.gz \
        --output /n/schierfs1/projects/nanog2016/mutant-shield1_S10.R1.bam  \
        --BAMoutput \
        --gzFASTQinput \
        --threads 4 \
        -H \
        -n 14 \
        --allJunctions