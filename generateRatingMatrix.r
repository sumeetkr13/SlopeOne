#
#auther vedraiyani
#title slopeone algorythm
#

#read dataset
data <- read.csv("u.data",FALSE,"\t");

#sort users and item
users<-sort(unique(data$V1));
items<-sort(unique(data$V2));

# create nullmatrix
rating_matrix<-matrix(0,length(users),length(items));

#matrix fill up
for(i in 1:length(data$V1)){
  rating_matrix[data[i,1],data[i,2]]<-data[i,3];  
}