#
#author vedraiyani
#
# @return vector of rms and rms error percentage
#

rmse_count<-function(){
  #read dataset
  data <- read.csv("./ml-100k/u2.test",FALSE,"\t");
  #data=testSet;
  
  count=length(data[,1]);
  sum=0
  for(i in 1:count){
    predictedRating=predict_rating(data[i,1],data[i,2]);
    sum=sum+(data[i,3]-predictedRating)^2;
  }
  error=sqrt(sum/count)
  return (c(error,error*100/5,count));
}