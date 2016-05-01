## Put comments here that give an overall description of what your
## functions do

## makecacheMatrix is a function that takes matrix as an input and sets the inverse of the matrix and a function to get the inverse.

makeCacheMatrix <- function(x = matrix()){
  m <- NULL
  
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function(){
    x
  }
  setInverse <- function(inverse){
    i <<- inverse
  }
  getInverse <- function(){
    m
  }
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## The above function value is stored in a variable and is passed as an arg to this function to calculate the inverse of the matrix through solve function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)){
    message("getting cache data")
    m
  }
  data <- x$get()
  m <- solve(data) %*% data 
  x$setInverse(m)
  m
} 
