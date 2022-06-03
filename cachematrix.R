#This script creates two functions to cache the inverse of a matrix 

## Function 1 - Creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

}

### Initialize the inverse
  inv <- NULL

 # Set the matrix
  set <- function(matrix){
    x <<- matrix
    inv <<- NULL
}

 # Get the matrix
  get <- function(){
    x
  }
   
# Set the inverse of the matrix
  setInverse <- function(inverse){
    inv <<- inverse
  }
  # Get the inverse of the matrix
  getInverse <- function(){
    inv
  }
# Return a list of the methods
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

# Function 2 - Computes the inverse of the special matrix returned by "makeCacheMatrix"
# If the inverse has already been calculated retrieves the inverse from the cache

cacheSolve <- function(x, ...) {
 
 # Return a matrix that is the inverse of 'x'   
        inv <- x$getInverse()
        
 # Just return the inverse if its already set       
  if(!is.null(inv)) {
    message("gets cached data!")
    return(inv)
  }
        
  # Get the matrix from our object
  data <- x$get()

  # Calculate the inverse using matrix multiplication
  inv <- solve(data, ...)
  
  # Set the inverse to the object      
  x$setinv(inv)
  
  ## Return the inverse of the original matrix 
  inv
  
}


