



add_element_to_sorted_vector <- function(v, n) 
  {
  
  stopifnot(is.vector(v))
  stopifnot(is.numeric(n))
  
  v_new <-vector()
  
  for(i in 1:length(v)) {
    
    
    # less than n
    if(n > v[i])  { v_new <- c(v_new, v[i])

    # greater than n but n not in v
    } else if((n < v[i]) & (!(n %in% v)))  { v_new <- c(v_new, n, v[i])
    
    }else { }
   
  }
  
  return(v_new)
  
}

  