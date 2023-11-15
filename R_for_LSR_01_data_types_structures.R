
# Warm up
a=22
b=22
c=a+b
print(c)

x=34; y=45
z=x-y
print(z)


# There are 6 data types in R
# Numeric, Integer, character, logical, Complex, Raw

# Numeric
a=23.5
class(a)
is.vector(a)

# Integer
a=23L
class(a)

# Character
a='DNA'
class(a)

# Logical
a=TRUE
class(a)

# Complex
a=2+10i
class(a)

# raw - convert the given character to their corresponding ASCII value or "raw" objects
a=charToRaw("DNA")
print(a)
class(a)

b=rawToChar(a)
b
class(b)

# Data structure - organization of the multiple data values in a specific format

# Simplest data structure in R - vector

# create a data object - a vector with combine
marks=c(1,2,3,4,5,6)
print(marks)
marks

class(marks)

# Checking the type of data structure
is.vector(marks)
is.matrix(marks)
dim(marks)



# Number of elements in a vector
length(marks)

# Accessing individual elements in a vector
# R follows 1 indexing - Python follows 0 indexing

marks
marks=c(2,4,6,8,10,12)

# Accessing 2nd index
marks[2]

# Replace a value with another
marks[3]=7
marks

# Accessing a series of positions
marks[2:4]

# Accessing multiple individual positions
marks[c(2,4)]

# Exclude an index
marks
marks[-3]

# Exclude several indexes
marks1=marks[c(-3,-5)]
marks1

# Reverse 
marks
rev(marks)

# Read data into an object
# Creating a vector

marks=c(90,85,85,90,92)
sum(marks)
meam(marks)
median(marks)

print(marks)
length(marks)

# Calculate sum
total_marks=sum(marks)
print(paste("Total marks obtained by the student =",total_marks))

# Calculate average
mean_marks=mean(marks)
cat("Average marks obtained by the student =",mean_marks)

# Finding median
median_marks=median(marks)
cat("Median marks =",mean_marks)

# Calculate variance
var_marks=var(marks)
print(var_marks)

# Vector summary
summary(marks)

# Vector multiplication
marks
double_marks=2*marks
double_marks

# Vector division
marks
half_marks=marks/2
half_marks

# 2 vector operations of equal length
a=c(1,2,3)
b=c(4,5,6)

# Addition
a_plus_b=a+b
print(a_plus_b)

# Subtraction
a_minus_b=a-b
print(a_minus_b)

# Multiplication
ab=a*b
ab
ba=b*a
ba

# Division
ab_div=a/b
ab_div

# 2 vectors of unequal length > it repeats for the missing elements as circle
e=c(1,2,3,4,5)
f=c(1,2)

e_plus_f=e+f
print(e_plus_f)

ef=e*f
ef

# Accessing individual elements of a vector
ab
ab[1]
ab[3]

# Combining vectors
a
b
z=c(a,b)
print(z)
length(z)

y=c(a,b,a)
print(y)
length(y)

# vectors containg characters
my_name=c("My","name","is","Sean")
class(my_name)

# Adding new element
my_name[5]="Alone"
my_name

summary(my_name)

# Vectors with both number and characters > all elements are treated as character

numbers=c(1,"two",3,"four")
numbers
class(numbers)

num1=numbers[1]
class(num1)


num1+2 #gives error

# Recognizing as a number and does operation
as.numeric(num1)+1

# Named vectors
named_vector=c(EcoR1="GAATTC",HindIII="AAGCTT",Pst1="CTGCAG")
named_vector

names(named_vector)

named_vector["EcoR1"]

# Generating a number of series

1:20

series1=1:20
print(series1)
is.vector(series1)

series2=seq(1,30)
series2
series2[5]
sum(series2)


series3=seq(0,10,by=0.5)
series3

series4=seq(6,10,length=10)
series4

