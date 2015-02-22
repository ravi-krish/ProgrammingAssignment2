## This function 'makeCacheMatrix' creates a vector and returns the same which is
## really a list containing a function to do the following
## Sets the matrix, gets the matrix, sets inverse of matrix and gets the inverse value of matrix
## So in short this function creates the matrix & then the inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinvmatrix <- function(invmatrix) m <<- invmatrix
  getinvmatrix <- function() m
  list(set = set, get = get,
       setinvmatrix = setinvmatrix,
       getinvmatrix = getinvmatrix)
  
  
}


## This function computes the inverse of the 'matrix' returned by 'makeCacheMatrix'
## This function checks if the inverse has been calculated and if so would return the value.
## The inverse of matrix is calculate using  the 'Solve' function.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinvmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinvmatrix(m)
  m
}


#1.  `makeCacheMatrix`: This function creates a special "matrix" object
#    that can cache its inverse.
#2.  `cacheSolve`: This function computes the inverse of the special
#    "matrix" returned by `makeCacheMatrix` above. If the inverse has
#    already been calculated (and the matrix has not changed), then
#    `cacheSolve` should retrieve the inverse from the cache.:1

