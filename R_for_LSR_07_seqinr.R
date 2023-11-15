
# install.packages("seqinr")

# Reading fasta files ith seqinr library

# Loading the library
library(seqinr)
getwd()

# Setting up the working directory
setwd()
file.show("Corona_mf.txt")


# Reading a fasta file
dna=read.fasta(file="Corona_mf.txt", seqtype="DNA", forceDNAtolower = TRUE)

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

GC_content=GC(dna[[2]])
print(paste("GC Content = ", GC_content))
print(round(GC_content,3))


# Reading fasta files with seqinr library
proseq=read.fasta(file="spike_multifasta.txt",seqtype="AA")

# Viewing file
file.show("spike_multifasta.txt")
View(proseq)

# Number of sequences
num_seq=length(proseq)
print(paste("Number of sequences = ",num_seq))


# Names of sequences
names=getName(proseq)
names

# Annotation of sequences
annotation <- getAnnot(proseq)
annotation


# Length of individual sequences
len_seq=getLength(proseq)
len_seq

# Protein statistics
print(AAstat(proseq[[1]]))

for (i in 1:num_seq)
{
  cat(i,names[i],"\n")
  print(AAstat(proseq[[i]]))
}

lseqinr()





