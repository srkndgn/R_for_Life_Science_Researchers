
# Bioconductor - ShortRead

# Installing BioManager
# Install Shortread

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("ShortRead")

# Loading library
library(ShortRead)


# Setting up the working directory
# setwd()
file.show("seq.fastq")

# Key functions in shortread library
# readfastq, length, widtth, id, sread, quality

# readfastq
fastq=readFastq("seq.fastq")

# fastq summary 
fastq

# Number of sequences in file
length(fastq)

number_of_reads=length(fastq)
print(number_of_reads)


# Width -length of individual reads
width(fastq)

readlength=width(fastq)
print(readlength)
print(readlength[1:3])

is.vector(readlength)
mean(readlength)
median(readlength)
hist(readlength,col="red")


# sread - sequence read - reach individual read sequence
sequence=sread(fastq)
print(sequence)
print(sequence[1])
print(sequence[2:4])

# Quality - quality score
quality_scores=quality(fastq)
print(quality_scores)

encoding(quality(fastq))

scores=as(quality_scores,"matrix")
scores
scores[5,1:50] #5th read and first 50 nucleotides

# id - id of reads
id_of_reads=id(fastq)
id_of_reads[2]
print(id_of_reads)

# Subset information

fastq[1:5]
print(fastq)
print(readlength[1:2])
print(sequence[1:2])
print(quality_scores[1:2])
print(id_of_reads[1:2])

# Generating summary of fastq sequences

seq_length=sequence@ranges@width
seq_length
is.vector(seq_length)

mean_score_per_sequence=rowMeans(scores,na.rm=TRUE)
mean_score_per_sequence

mean_score_per_position=colMeans(scores,na.rm=TRUE)
mean_score_per_position

####################
num1=c(1,2,3,4,NA,5)
mean(num1,na.rm=TRUE)
mean(num1)
####################

# Dispersion in quality scores

boxplot(scores[,1:20],xlab="Position",ylab="Phread score") # we are looking for all reads and first 20 columns




