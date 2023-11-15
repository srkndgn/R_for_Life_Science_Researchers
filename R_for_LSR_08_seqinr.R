
# install.packages("seqinr")

# Reading fasta files ith seqinr library

# Loading the library
library(seqinr)
getwd()

# Setting up the working directory
# setwd()
file.show("GAPDH_seq.txt")


# Reading a fasta file
dna=read.fasta(file="GAPDH_seq.txt", seqtype="DNA", forceDNAtolower = TRUE)
View(dna)

# Number of sequences
Number_of_sequences=length(dna)
cat("Number of sequences = ", Number_of_sequences)

# Names of sequences
names=getName(dna)
names

# Name of the nth sequence
names[[2]]


# Annotation of sequences
annotation=getAnnot(dna)
annotation
annotation[[1]]
annotation[[2]]

# Length of individua sequences
len_seq=getLength(dna)
len_seq
len_seq[[1]]


# Sequence
getSequence(dna)

seq1=getSequence(dna[[1]],as.string = TRUE)
seq1

dinucleotide_count=count(dna[[1]],2)
print(dinucleotide_count)

trinucleotide_count=count(dna[[2]],3)
print(trinucleotide_count)


# GC content
GC_content=GC(dna[[2]])
print(paste("GC Content = ", GC_content))
print(round(GC_content,3))

GC(dna[[1]])
GC(dna[[2]])

# Sliding window analysis for GC content
# Retrieve sequence as vector of nucleotides 

seq1=getSequence(dna[[1]],as.string = TRUE)
print(seq1)

# gc=c()
# count1=count1+1 #gc index
# gc[count1]=subGC #filling up calculated gc fraction


# For the first sequence

seq1=getSequence(dna[[1]],as.string = FALSE)
begin=1
gc=c()
count1=0
count2=0

length(seq1)
while (begin < length(seq1)) # begin 1 end 500
{
  end=begin+499 #500
  
  if (end > length(seq1))
  {
    end=length(seq1)
    count2=1
  }
  
  subsequence=seq1[begin:end]  #1:500
  count1=count1+1
  sub_GC=GC(subsequence)
  gc[count1]=sub_GC
  
  cat(begin,end,sub_GC, "\n")
  
  if(count2==1)
  {break}
  begin=end-199 #begin = 500-199=301
  
}
print(gc)


# Count of values at certain range(histogram for each window range based on gc content)
hist(gc,col="red")


# Sliding window for all sequences

for (i in 1:Number_of_sequences)
{
  seq1=getSequence(dna[[i]],as.string = FALSE)
  print(getName(dna[i]))
  print(getAnnot(dna[i]))
  
  begin=1
  gc=c()    #initializing empty vector
  count1=0  #flag to fill vector gc
 
  length(seq1)
  while (begin < length(seq1)) # begin 301 end 800
  {
    end=begin+499              # begin = 301 end=800
    subsequence=seq1[begin:end]
    subGC=GC(subsequence)
    cat(begin,end,subGC, "\n")
    
    count1=count1+1 #gc index
    gc[count1]=subGC #filling up calculated gc fraction
    begin=end-199 #begin = 500-199=301 - overlap of 200 bases
  }
  
  hist(gc,col="red")   
  
}  



