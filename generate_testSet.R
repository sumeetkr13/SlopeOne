#
#author vedraiyani
#title generate testset from existing data set
#

#generate_testSet<-function(n){
  
  #no of test rating
  n=20;
  #no of test item
  m=2;
  
  testSet=matrix(0,n*m,3);
  
  #generate random users
  test_users=sample(users,n);
  
  #generate random items
  test_items=sample(items);
  
  count=0
  for(u in test_users){
    item_count=0;
    for(i in test_items){
      
      if(item_count==m){
        break();
      }
      if(rating_matrix[u,i]!=0){
      
          count=count+1;
          
          testSet[count,1]=u;
          testSet[count,2]=i;
          testSet[count,3]=rating_matrix[u,i];
          
          rating_matrix[u,i]=0;
          
          item_count=item_count+1;
      }
    } 
  }
  
  #free memory
  remove(n)
  remove(m)
  remove(u)
  remove(i)
  remove(count)
  remove(item_count)
  remove(test_items)
  remove(test_users)
#}