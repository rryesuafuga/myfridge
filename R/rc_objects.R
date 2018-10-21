

# The function is called "create_fridge" and the object is called "fridge"
  create_fridge <-  setRefClass("fridge",
              

              fields = list(fridge_content = "data.frame", 
                            fridge_volume = "numeric",
                            volume_taken = "numeric",
                            free_space = "numeric",
                            added_fridge_content = "data.frame"),
              
              methods = list(
                
                initialize = function(fridge_content, fridge_volume){
                  
                  stopifnot(is.data.frame(fridge_content))
                  stopifnot(ncol(fridge_content)==3) 
                  
                  fridge_content <<-
                    setNames(data.frame(matrix(ncol = 3, nrow = 0)), 
                             c("product_id", "amount", "unit_space"))
                  
                  
                  # more calculations needed here
                  volume_taken <<- as.numeric(fridge_content$amount %*% 
                                   fridge_content$unit_space)
                  
                  free_space <<- fridge_volume - volume_taken
                  
                  # initialisations
                  .self$fridge_content <- fridge_content
                  .self$fridge_volume <- fridge_volume
                  .self$volume_taken <- volume_taken
                  .self$free_space <- free_space
                  .self$added_fridge_content <- added_fridge_content
                  .self
    
                }
                
                # ,
                # 
                # 
                # # more methods follow here
                # 
                # add_to_fridge <- function(added_fridge_content){
                #   
                #   stopifnot(is.data.frame(added_fridge_content))
                #   stopifnot(ncol(added_fridge_content)==3)
                #   
                #   added_fridge_content <-
                #     setNames(data.frame(matrix(ncol = 3, nrow = 0)), 
                #              c("product_id", "amount", "unit_space"))
                  
                  # if(added_fridge_content$product_id %in% 
                  #    fridge_content$product_id){
                  #   
                  #   fridge_content$amount[ which(added_fridge_content$product_id %in% 
                  #   fridge_content$product_id)] <<-
                  #   added_fridge_content$amount +
                  #   fridge_content$amount[ which(added_fridge_content$product_id %in% 
                  #   fridge_content$product_id)]
                  #   
                  # }
                  #   
                  # else(!(added_fridge_content$product_id %in% 
                  #           fridge_content$product_id)) 
                      # fridge_content <<- 
                      #   rbind(fridge_content, added_fridge_content)
                    
                  # }
                  
                  
                  
                  
      
              )
              
              
              
)

