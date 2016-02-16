#
#author vedraiyani
#
#dev value of given item
# @param j item 
# @return deviation vector of item j
#

devfun <- function(j){
  dev=c();
  
  #check for each item
  for(i in 1:length(items)){
    s=0;
    u=c();
    
    #check for each users
    u=intersect(users[rating_matrix[,i]!=0],users[rating_matrix[,j]!=0])
    #for each co-related user take sum of item i and j rating difference and take it's mean
    s=sum(rating_matrix[u,j])-sum(rating_matrix[u,i])
    if(length(u)!=0){
      s=s/length(u);
    }
    dev<-append(dev,s);
    
  }
  return (dev);
}