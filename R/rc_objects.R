

# The function is called "create_fridge" and the object is called "fridge"
  create_fridge <-  setRefClass("fridge",
              

              fields = list(fridge_content = "data.frame", 
                            fridge_volume = "numeric",
                            volume_taken = "numeric",
                            free_space = "numeric"),
              
              methods = list(
                
                initialize = function(fridge_content, fridge_volume){
                  
                  stopifnot(is.data.frame(fridge_content))
                  stopifnot(ncol(fridge_content)==3) 
                  
                  fridge_content <-
                    setNames(data.frame(matrix(ncol = 3, nrow = 0)), 
                             c("unique_ID", "amount", "unit_space"))
                  
                  
                  # more calculations needed here
                  volume_taken <- as.numeric(as.matrix(fridge_content[,2]) %*%
                                      as.matrix(fridge_content[,3]))
                  
                  free_space <- fridge_volume - volume_taken
                  
                  .self$fridge_content <- fridge_content
                  .self$fridge_volume <- fridge_volume
                  .self$volume_taken <- volume_taken
                  .self$free_space <- free_space
                  .self
    
                }
                
                # more methods follow here
                
                
              )
              
              
              
)

