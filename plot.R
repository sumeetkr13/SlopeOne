cols <- c(
  '0' = "#000000",
  '1' = "#FF0000",
  '2' = "#00FF00",
  '3' = "#0000FF",
  '4' = "#FFFF00",
  '5' = "#FFFFFF"
);
num_users=length(users);
num_items=length(items);
image(1:num_users, 1:num_items, rating_matrix, col=cols);
image(1:num_users, 1:num_items, rating_matrix, col=heat.colors(12))