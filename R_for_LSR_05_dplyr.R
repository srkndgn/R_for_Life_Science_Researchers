
# Setting the working directory either through session menu or through the console
# setwd("D:/R_for_Life_Science_Researchers")

# To check where your wd is
getwd()


# Installing packages
# install.packages("dplyr")
# install.packages("readxl")

# loading the required libraries
library(readxl)
library(dplyr)

# Reading the data from file into a dataframe
hg=read_excel("Human_genome.xlsx")
hg
View(hg)
class(hg)

# Checking data
head(hg,3)
tail(hg,3)

# Number of rows and columns
nrow(hg)
ncol(hg)
dim(hg)

# Names of columns
colnames(hg)

# Structure of dataframe
str(hg)

# random sample - a percent of rows
sample_frac(hg,0.25)

# random sample - fix number of rows
sample_n(hg,3)


# Retrieving a column
chr_size=hg$Base_Pairs
chr_size
summary(chr_size)

# Q1 Which 10 chromosomes have maximum size
# select, arrange, slice

# chain hg to hg1, so hg1 equals to hg
hg1=hg %>%

select("Chromosome","Base_Pairs") %>% # sub-setting data frame  

arrange(desc(Base_Pairs)) %>% #arranging in descending order
  
slice(1:10) #pull the first 10 lines

View(hg1)
hg1

# Writing results to file - write.table
write("The largest chromosome with respect to size is", file="Results.txt")
file.show("Results.txt")

write.table(hg1,file="Results.txt", append=TRUE)
file.show("Results.txt")

# Writing results to file removing row index and quotes
write("The largest chromosome with respect to size is", file="Results_02.txt")

write.table(hg1,file="Results_02.txt", row.names=FALSE, quote=FALSE, append=TRUE)
file.show("Results_02.txt")


# Q2 List of chromosomes with more than 500 pseudogenes and more than 1000 protein coding genes

# Filter
hg2=hg %>%
filter(Pseudogenes > 500 & Protein_Coding_genes > 1000)
View(hg2)

# Q3 List of chromosomes with more than 500 pseudogenes OR more than 1000 protein coding genes, and miRNA > 100
hg2=hg %>%
filter((Pseudogenes > 500 | Protein_Coding_genes > 1000) & miRNA > 100)
View(hg2)
class(hg2)

# Adding a blank line before the next print statement
write("\nData Hg2 - Pseudogenes > 500 or Protein coding genes > 1000 and miRNA > 100", file="Results.txt", append=TRUE, sep="\t")
file.show("Results.txt")

write.table(hg2,file="Results.txt", row.names=FALSE,quote=FALSE,append=TRUE )
file.show("Results.txt")


# Q4 Which 10 chromosomes have the highest protein coding gene density (Genes per megabase)

# Mutate
hg3=hg %>%
mutate(Genes_per_Mb=(Protein_Coding_genes/(Base_Pairs/1000000)))
View(hg3)

# Arrange and Select
hg4=hg3 %>%
select(Chromosome, Genes_per_Mb) %>%
arrange(desc(Genes_per_Mb)) %>%
slice(1:10)
View(hg4)


# Q5 calculate the mean of the gene density for autosomes, sex chromosomes and mitochondrial genome
View(hg3)
autosomes=rep("A",22)
autosomes

chr_tag=c(autosomes,"S","S","M")
chr_tag

# Alternate method
chr=c("A","S", "M")
chr_tag=rep(chr, times=c(22,2,1))
chr_tag

# Adding a new column to dataframe
hg5=hg3 %>%
mutate(Type=chr_tag)
View(hg5)

# Calculating mean genes density - group wise
hg6=hg5 %>%
group_by(Type) %>% # according to Type column in hg5
summarise(gene_density=mean(Genes_per_Mb))
View(hg6)

# Reading sheets
getwd()

# by sheet name
sheet1=read_excel("names.xlsx", "Subjects_1")
View(sheet1)

# by sheet number
sheet2=read_excel("names.xlsx", 2)
View(sheet2)