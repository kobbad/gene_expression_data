#!/bin/bash

#SBATCH -n 4                            
#SBATCH -N 1                            
#SBATCH --mem=8000                      

#SBATCH -t 03:00:00 
#SBATCH -p serial_requeue  

#SBATCH -o /n/regal/scrb152/Students/kobbad/paper2/feature_out.out
#SBATCH -e /n/regal/scrb152/Students/kobbad/paper2/feature_err.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kobbad@college.harvard.edu

# --------------
source /n/scrb152/setup.sh

featureCounts \
    -a /n/regal/scrb152/Data/Reference/Mus_musculus/UCSC/mm10/Annotation/Genes/genes.gtf \
    -F GTF \
    -o /n/regal/scrb152/Students/kobbad/paper2/feature_counts_all.txt \
    -Q 1 \
    -s 0 \
    -D 20000 \
    -d 0 \
    /n/regal/scrb152/Data/Sansom_et_al/bulk_samples_bam/*.bam