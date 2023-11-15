
# To check where your wd is
getwd()


# Installing packages
# install.packages("ggplot2")

# loading the required libraries
library(ggplot2)
library(data.table)
library(dplyr)

# Loading data
methylated_c=fread("R_WORKSHOP.csv", header=T, sep=",")
View(methylated_c)

# Checking data
str(methylated_c)
summary(methylated_c)

# Plotting the graph

# Set up
graph=ggplot(methylated_c)+aes(x=Chromosome,y=Count_in_millions)+
  labs(x="Chromosomes", y="Cytosine count in millions", title="Methylatable Cytosine distribution in A.thaliane ")
print(graph)


# geom
graph1=graph+geom_col()
print(graph1)

# Adding depth to the data - ADDING CONTEXT INFO
graph2=graph1+aes(fill=Context)
print(graph2)

# Additional modifications
graph3=graph3+geom_col(position="dodge")+aes(fill=Context)
print(graph3)

# Faceting or grouping
graph4=graph3+facet_grid(~Context)
print(graph4)

# Choice of colors
# https://colorbrewer2.org/

graph5=graph4+scale_fill_manual(values=c("violet","skyblue","darkgreen"))
print(graph5)

# Background color
graph5+theme_bw(base_size=9)+theme(panel.background = element_rect(fill="yellow"))

# Platte choice
graph6=graph4+scale_fill_brewer(palette = "Blues", labels=c("French Flower","German Flower","UK Flower"))
print(graph6)

# All in one
final_graph=ggplot(methylated_c)+
  aes(x=Chromosome,y=Count_in_millions,fill=Context)+
  labs(x="Chromosomes", y="Cytosine count in millions", title="Methylatable Cytosine distribution in A.thaliane")+
  geom_col(position="dodge")+facet_grid(~Context)+scale_fill_brewer(palette = "Spectral")+theme_bw()+
  theme(panel.background = element_rect(fill="yellow"))
  
print(final_graph)
  
library(RColorBrewer)
display.brewer.all()  

data("iris")
str(iris)
View(iris)

write.table(iris,file="iris1.txt", quote=FALSE, row.names=FALSE, sep=",")
file.show("Iris1.txt")

sepal_length=iris %>%
  select("Sepal.Length","Species")
  View(sepal_length)

# QC of data to check whether we have NA values
is.na(sepal_length)
sum(is.na(sepal_length))

# Why this is.na is so important
vector11=c(5,6,7,NA,8)
mean(vector11) # It doesnt know waht to do with NA
mean(vector11,na.rm=TRUE) # this avoids NAs

# Plotting the graph

# Base setup
graph7=
  ggplot(iris)+aes(x=Species,y=Sepal.Length, fill=Species)+
  labs(x="Species",y="Sepal.Length",title="Sepal length distribution")
print(graph7)

# defining the geom
graph8=graph7+geom_boxplot(width=0.4)
print(graph8)

graph9=graph7+geom_violin()
print(graph9)

graph10=graph9+geom_boxplot(width=0.2)
print(graph10)

graph11=graph10+
  scale_fill_brewer(palette = "Dark2")
graph11


# The full command in one line

final_graph=ggplot(iris)+aes(x=Species,y=Sepal.Length)+
  labs(x="Species",y="Sepal.Length",title="Sepal length distribution")+
  geom_boxplot(width=0.4)+
  theme(axis.text.x = element_text(angle=90))+
  aes(fill=Species)+
  scale_fill_brewer(palette = "Dark2")
print(final_graph)

final_graph2=ggplot(iris)+aes(x=Species,y=Sepal.Length)+
  labs(x="Species",y="Sepal.Length",title="Sepal length distribution")+
  geom_violin()+
  geom_boxplot(width=0.2)+
  theme(axis.text.x = element_text(angle=90))+
  aes(fill=Species)+
  scale_fill_brewer(palette = "Dark2")
print(final_graph2)

# Scatter plot
scatter_plot1=ggplot(iris, aes(x=Sepal.Length,y=Petal.Length,shape=Species,color=Species))+
  geom_point()+labs(x="Sepal Length",y="Petal Length",title="Correlation between Sepal Length and Petal Length")
print(scatter_plot1)


# Line plot
line_plot1=ggplot(iris, aes(x=Sepal.Length,y=Petal.Length,shape=Species,color=Species))+
  labs(x="Sepal Length",y="Petal Length",title="Correlation between Sepal Length and Petal Length")+
  geom_line()
print(line_plot1)



################################################################################
# List structure

list1=list(1,
           c(4,6,6,6),
           c("HpaII","EcoR1","EcoRV","HindIII"),
           c("CCGG","GAATTC","GATATC","AAGCTT"),
           6,
           "Restriction Enzymes")
list1[[1]]
list1[[2]]
list1[[3]]
list1[[4]]
list1[[5]]
list1[[6]]
class(list1[[3]])
