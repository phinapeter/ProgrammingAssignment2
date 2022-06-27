## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## setting up the functions to use in cachesolve

makeCacheMatrix <- function(x = matrix()) {
        xinv <- NULL
        setmatrix<- function(y) {
                x <<- y
                xinv <<- NULL
        }
        getmatrix <- function() x
        setinverse <- function(value_to_set) xinv <<- value_to_set
        getinverse <- function() xinv
        list(setmatrix = setmatrix, getmatrix=getmatrix, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        xinv <- x$getinverse()
        if (!is.null(xinv)){
                message("getting cached data")
                return(xinv)
        }
        data <- x$getmatrix()
        xinv <- solve(data)
        x$setinverse(xinv)
        xinv
}

