# Matrix or arrays - 2D data structure - consisting of rows and columns

# Defining a matrix - like vectors matrix contains only a single class of data

vector1=seq(1,9)
vector1

# Vector properties
length(vector1)
dim(vector1)
is.vector(vector1)

# Creating a matrix by column
vector1
data1=matrix(vector1,ncol=3,nrow=3)
data1

# Creating a matrix by row
vector1
data2=matrix(vector1,ncol=3,byrow=TRUE)
data2

# Dimensions of a matrix, number of rows and columns
dim(data1)
dim(data2)

is.matrix(data1)
is.vector(data1)
class(data1)

# Accessing individual values > first>rows  -  second>columns
data1
data1[2,3]
data1[2,2]


# Accessing values in a row
data1
row1=data1[1,]
row1
is.vector(row1)

sum(row1)
mean(row1)
summary(row1)

# Accessing values in a column
data2
data2[2,2]=100
data2[2,2]
data2
dim(data2)


# Accessing a spesific column
data2
col2=data2[,2]
col2
print(col2)
is.vector(col2)

sum(col2)
mean(col2)
summary(col2)

# Number of rows or columns
data1
rows=nrow(data1)
print(rows)

columns=ncol(data1)
print(columns)

# Matrix addition
data1
data3=data1+2
data3

# Matrix subtraction
matrix_sub=data3-2
matrix_sub

# Matrix multiplication - Scalar multiplication
print(data1)
data4=data1*2
data4

matrixA=matrix(c(1,2,3,4),ncol=2)
matrixA

# Transpose of already created matrix
matrixB=t(matrixA)
matrixB

# CASE WISE MULTIPLICATION A*B=B*A
matrixC=matrixA*matrixB
matrixC

matrixD=matrixB*matrixA
matrixD

# Modifying matrix
matrixA

# Adding columns
matrixA=cbind(matrixA,c(5,6))
matrixA

# Adding rows
matrixA=rbind(matrixA,c(7,8,9)) # if you give 2 elements it repeats from starting the first element
matrixA

# if you give 2 elements it repeats from starting the first element
matrixZ=rbind(matrixA,c(7,8))
matrixZ

# Matrix multiplication
matrixA=matrix(c(1,2,3,4),ncol=2)
matrixA

