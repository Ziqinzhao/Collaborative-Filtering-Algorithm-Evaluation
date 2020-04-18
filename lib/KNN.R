KNN.post <- function(data, result){
  
  Q <- result$q #movie
  P <- result$p #user
  R <- t(P) %*% Q  # 32*2427
  
  User_all <- colnames(P) 
  Movie_all <- colnames(Q) 
  
  U<-User_all %>% length()
  I<-Movie_all %>% length()
  
  
  distance_movie <- cosine(Q) %>% as.matrix() # use similarity matrix
  rownames(distance_movie) <- Movie_all # 2427
  colnames(distance_movie) <- Movie_all # 2427
  
  for (u in 1:U){  # for every user (32 in total)                                          # only train dataset(since A/R part only contains train dataset)  
    # find trainset: movie rated by u(all movies if rated by user u)
    Movie_rated_by_u <- data[data$userId == u,]$movieId%>%unique%>%as.character()       
    # all movies if not rated by user u
    Movie_NOTrated_by_u <- Movie_all[!Movie_all%in%Movie_rated_by_u]           # predict rating of u            
    Rating_by_u<-R[u,]                                                                   
    for (i in Movie_NOTrated_by_u){ # for every movie not rated by u                       
      tmp <- distance_movie[i,Movie_rated_by_u] %>% which.max %>% names 
      # find the highest dist.cosine score (which is the most simliarity)
      Rating_by_u[i] <- Rating_by_u[tmp]                            
      # using the most simliarity movie which is rated by u to replace the score of the movie which is not rated by u
    }
    R[u,] <- Rating_by_u 
    
  }
  return(rating_knn=R) 
}