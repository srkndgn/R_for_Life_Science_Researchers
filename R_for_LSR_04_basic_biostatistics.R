# Counting A, T, G, C - multiple ways of counting

# Generating a random DNA sequence

nucleotide=c("A","T","G","C","N")
dna=nucleotide[c(1,3,2,4,2,3,2,5)] # it picks the nucleotide according to index number from nucleotide vector
dna

set.seed(100) # to get the same sequence at each time
dna=sample(nucleotide, 10, replace=TRUE)
dna

is.vector(dna)
typeof(dna)
class(dna)

length1=length(dna)
print(length1)

# Method 1 - using for loop
# initializing counters

dna

# Calculating A,T,G,C

a=0; t=0; g=0; c=0; un=0

for (i in dna)
{
  if (i=="A") {a=a+1}
  else if (i=="T") {t=t+1}
  else if (i=="G") {g=g+1}
  else if (i=="C") {c=c+1}
  else{un=un+1}
}

print(paste("A,T,G,C,Un  ", a,t,g,c,un))

# Method 2 - using Stringr library, no loop

# install stringr package
# install.packages("stringr")

# upload necessary library for the package
library(stringr)

# Converting vector into a string
dna
typeof(dna)

dna=paste(dna,collapse="") # paste all values in a vector into a single string without separator
dna
length(dna)

a=str_count(dna,"A")
t=str_count(dna,"T")
g=str_count(dna,"G")
c=str_count(dna,"C")
n=str_count(dna,"N")
cat("a,t,g,c,n  ",a,t,g,c,n)

# Method 3 - using stringr library and loop
dna
nuc=c("A","T","G","C","N")

for (i in nuc)
  {
  n_count=str_count(dna,i)
  cat(i,n_count,"\n")
}

# ** Data Frames **
# Dataframes are tabular data - differ from matrix in the sense that different columns can have different classes of dta types

RE=c("EcoRI","HindIII","PstI","EcoRV","AluI")
RecSeq=c("GAATTC","AAGCTT","CTGCAG","GATATC","AGCT")
Cut=c("Sticky","Sticky","Sticky","Blunt","Blunt")
RecSeqLength=c(6,6,6,6,4)

# Converting vectors to data frame

restrict=data.frame(RE,RecSeq,Cut,RecSeqLength)
restrict
View(restrict) # opens in a new window

# Accessing start and end
head(restrict,3)
tail(restrict,3)

# Accessing individual column by name
vector1=restrict$RecSeqLength
vector1
is.vector(vector1)

# by index
restrict[,4] # for the 4th column
restrict[4,] # for the 4th row

class(vector1)


restrict
restrict[4:5,3:4]

# Accessing individual values in the dataframe

# Specific element in dataframe
restrict
restrict[2,3]
restrict[c(2,4,5),] # access specific rows
restrict[c(2,4,5),c(1,3)] # access specific rows with specific columns

# Sub-setting data frame

# Specific row
restrict[1,]

# Specific column
restrict[,1]

# A series of rows
restrict[1:3,]

# Repeating values in a vector
rep_vec=c(3,3,3,3,3,3,3,3,3,3)
length(rep_vec)

repetitive_vector=rep(3,100)
repetitive_vector

rep_vector1=rep(c(4,5,6),3) # 3 times repeating 456456456
rep_vector1

rep_vector2=rep(c(4,5,6),each=3) # 3 times repeating for each 444555666
rep_vector2

# Adding a new column
restrict
RE_Class=rep("ClassII",5)

is.vector(RE_Class)
RE_Class

restrict=cbind(restrict, RE_Class)
restrict


# Adding a new row

new_row=data.frame(RE="DraI", RecSeq="TTTAAA", Cut="Blunt", RecSeqLength=6, RE_Class="ClassIII")
new_row                  
restrict
restrict=rbind(restrict,new_row)
restrict


# Creating dataframes with vectors
Students=c("Serkan","Maja","Kelly","Cor")
Python=c(8,9,9,8.5)
R=c(8,7,9,7)
Bioinfo=c(8,6,6.5,8)

# Creating a dataframe from vectors
results=data.frame(Students,Python,R,Bioinfo)
results

head(results,3)
tail(results,2)

Students
# Adding a new column
Biotech=c(9,5,7,7)

results=cbind(results,Biotech)
results

a=c(1,2,3)
b=c(4,5,6)
a+b

# A new column  - total marks
results$total=(results$Python+results$Bioinfo+results$Biotech+results$R)
results

# Calculate averages of marks
av=results$total/4
av

# Adding average column
results=cbind(results,av)
results
