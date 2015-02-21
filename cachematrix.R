## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a 'matrix' object.
## This function also caches its inverse.

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function
## This function computes the inverse of the 'matrix' returned by 'makeCacheMatrix'
## This function checks if the inverse has been calculated and if so would returnthe value

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


#1.  `makeCacheMatrix`: This function creates a special "matrix" object
#    that can cache its inverse.
#2.  `cacheSolve`: This function computes the inverse of the special
#    "matrix" returned by `makeCacheMatrix` above. If the inverse has
#    already been calculated (and the matrix has not changed), then
#    `cacheSolve` should retrieve the inverse from the cache.
#
