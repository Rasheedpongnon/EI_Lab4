pred_logistic <- function(theta, x){
  z <- exp(theta[3]+theta[4]*x)
  Ey <- theta[1]+theta[2]*z/(1+z) 
}

fit_logistic <- function(dat, par){
  
  fit <- nls(gcc_mean ~ pred_logistic(theta = theta, x = doy), data = dat, start = list(theta = par))
  
  fit$m$getPars()
  
}
