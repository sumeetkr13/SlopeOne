#
#author vedraiyani
#
#count rating for given itemby given user
# @param u user
# @param i item
# @return predicted rating
#

predict_rating <- function(u,i){
  
  n=rating_matrix[u,];
  n=n[n!=0];
  
  #total rating
  val=sum(rating_matrix[u,]);
  
  #call dev function for item i
  dev=devfun(i);
  
  #count average value
  val=val+sum(dev[items[rating_matrix[u,]!=0]]);
  val=val/length(n);
  if(val>5){
    val=5;
  }
  return (val);
}