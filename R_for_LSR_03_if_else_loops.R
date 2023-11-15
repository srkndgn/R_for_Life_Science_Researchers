# Iterations in R

# Short revision
vector1=seq(1,12)
print(vector1)

# Matrix
matrix1=matrix(vector1,ncol=3)
matrix1

matrix1[1,2]
matrix1[1:2,2:3]


# Rloops - for loop - loops are meant to iterate a process 
# the process statement is written once and can be run a defined number of times

for (i in 1:10)
{
  print("R for life science researchers")
}

# Generate values from 1 to 1000
for (x in 1:1000)
{
  print(x)
}

# Generate squares of numbers from 1 to 10 and print the number and corresponding square values
# You need a paste command to print multiple things at the same time for a single print command
for (n in 1:10)
{
  print(paste(n,n^2,n^3))
}

# Generating squares of values in a vector

# Iteration over a vector

num=c(-5,12,6,8,10)
length(num)
print(num)
is.vector(num)

for (n in num)
{
  print(n^2)
}

num=seq(1:100)

# Taking input through the console
num1=readline("Submit the number  ")
print(num1)
class(num1)

num2=as.numeric(num1)
print(num2)
class(num2)

# ** By default any input from the terminal is character **
# The class can be changed

num1=readline("Submit the number  ")
num1+2  #gives an error
class(num1)

# Changing the class of the datatype
num1=as.numeric(readline("Submit the number  "))
print(num1)
class(num1)

# Generating a table of given number to a given multiple

# Generate a table of any number till any number of times as submitted by the user

# Taking input from the user
num1=as.integer(readline("The number whose table you want   "))

# Taking input for max multiple
last_multiple=as.integer(readline("the last multiple  "))

# Printing a table using for loop
for (i in 1:last_multiple)
{
  print(paste(num1,"x",i,"=",i*num1))
}

# Generate a random DNA sequence
nucleotide=c("T","G","A","C")

set.seed(99) # to generate the same index for random dna molecule at each time otherwise it generates different molecule at each run
dna=sample(nucleotide,10,replace=TRUE)
dna
is.vector(dna)

# Composition of your random DNA
a=0; t=0; g=0; c=0
dna


for (i in dna)
{
  print(i)
  if (i=="A") {a=a+1}
  if (i=="T") {t=t+1}
  if (i=="G") {g=g+1}
  if (i=="C") {c=c+1}
}

print(paste(a,t,g,c))


# Breaking a loop
num=5

for (n in 1:num)
{
  if (n>3) {break}
  print(n^2)
}

# While loop
i=1
while (i<6)
{
  print(i)
  i=i+1
}

