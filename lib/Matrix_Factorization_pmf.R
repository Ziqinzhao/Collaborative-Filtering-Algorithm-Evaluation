
#probabilistic Gradient Descent
# a function returns a list containing factorized matrices p and q, training and testing RMSEs.
gradesc_pmf <- function(f = 10, 
                    sigma_p = 1,sigma_q = 1,sigma = 0.1,lrate = 0.01, max.iter, stopping.deriv = 0.01,
                    data, train, test){
  set.seed(0)
  #random assign value to matrix p and q
  p <- mvrnorm(f,mu = rep(0,U),Sigma = sigma_p*diag(U)) 
  colnames(p) <- as.character(1:U)
  q <- mvrnorm(f,mu = rep(0,I),Sigma = sigma_q*diag(I))
  colnames(q) <- levels(as.factor(data$movieId))
  
  train_RMSE <- c()
  test_RMSE <- c()
  
  for(l in 1:max.iter){
    sample_idx <- sample(1:nrow(train), nrow(train))
    #loop through each training case and perform update
    for (s in sample_idx){
      
      u <- as.character(train[s,1])
      
      i <- as.character(train[s,2])
      
      r_ui <- train[s,3]
      
      e_ui <- r_ui - t(q[,i]) %*% p[,u]
      
      grad_q <- e_ui %*% p[,u] - (sigma/sigma_q)* q[,i]
      
      if (all(abs(grad_q) > stopping.deriv, na.rm = T)){
        q[,i] <- q[,i] + lrate * grad_q
      }
      grad_p <- e_ui %*% q[,i] - (sigma/sigma_p)* p[,u]
      
      if (all(abs(grad_p) > stopping.deriv, na.rm = T)){
        p[,u] <- p[,u] + lrate * grad_p
      }
    }
    #print the values of training and testing RMSE
    if (l %% 20 == 0){
      cat("epoch:", l, "\t")
      est_rating <- t(q) %*% p
      rownames(est_rating) <- levels(as.factor(data$movieId))
      
      train_RMSE_cur <- RMSE(train, est_rating)
      cat("training RMSE:", train_RMSE_cur, "\t")
      train_RMSE <- c(train_RMSE, train_RMSE_cur)
      
      test_RMSE_cur <- RMSE(test, est_rating)
      cat("test RMSE:",test_RMSE_cur, "\n")
      test_RMSE <- c(test_RMSE, test_RMSE_cur)
    } 
  }
  
  return(list(p = p, q = q, train_RMSE = train_RMSE, test_RMSE = test_RMSE))
}
