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
  for(u in 1:length(test_users)){
    item_count=0;
    for(i in 1:length(test_items)){
      
      if(item_count==m){
        break();
      }
      
      ui=test_users[u];#user index
      ii=test_items[i];#item index
      
      if(rating_matrix[ui,ii]!=0){
      
          count=count+1;
          
          testSet[count,1]=ui;
          testSet[count,2]=ii;
          testSet[count,3]=rating_matrix[ui,ii];
          
          rating_matrix[ui,ii]=0;
          
          item_count=item_count+1;
      }
    } 
  }
#}