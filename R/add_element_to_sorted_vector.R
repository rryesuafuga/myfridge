



add_element_to_sorted_vector <- function(v, n) 
  {
  
  stopifnot(is.vector(v))
  stopifnot(is.numeric(n))
  
  v_new <-vector()
  
  for(i in 1:length(v)) {
    
    
    # less than n
    if(n > v[i])  { v_new <- c(v_new, v[i])

    # greater than n but n not in v
    } else if((n > v[i]) & (!(n %in% v_new)))  { v_new <- c(v_new, n)

    # greater than n but n already in v
    # if((n > v[i]) & (n %in% v_new))
    } else { v_new <- c(v_new, v[i]) }
    
    

    
    print(v_new)
  }
  
  return(v_new)
  
}

  