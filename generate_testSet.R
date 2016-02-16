#
#author vedraiyani
#title generate testset from existing data set
#

#generate_testSet<-function(n){
  
  #no of test rating
  n=5;
  
  testSet=matrix(0,n,3);
  
  #generate random users
  test_users=sample(users,n);
  
  #generate random items
  test_items=sample(items);
  
  count=0
  for(u in 1:length(test_users)){
    for(i in 1:length(test_items)){
      if(rating_matrix[u,i]!=0){
        count=count+1;
        testSet[count,1]=u;
        testSet[count,2]=i;
        testSet[count,3]=rating_matrix[u,i];
        rating_matrix[u,i]=0;
        break();
      }
    } 
  }
#}