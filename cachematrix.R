## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##evaluates if X is a matrix and outputs yes if so. If no, outputs that x is not a matrix

makeCacheMatrix <- function(x = matrix()) {
  # check if x is a matrix
  if(is.matrix(x)) {
    print("It is a matrix")
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function()m
    list(set = set, get = get, 
         setinverse = setinverse,
         getinverse = getinverse)
  }
  else {
    print("X is not a matrix")
    return(message("The matrix isn't invertible"))
  }
}


## Write a short comment describing this function
##Function that evaluates the inverse of a matrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  print(paste0(cat("cacheSolve m: "), m))
  if(!is.null(m)) {
    message("Getting cached data")
    return(m)
  }
  data <- x$get()
  print(paste0(cat("cacheSolve m1: "), m))
  x$setinverse(m)
  print(paste0(cat("cacheSolve x$setinverse(m): "), x$setinverse(m)))
  m
  print(paste0(cat("cacheSolve m: "), m))
}
