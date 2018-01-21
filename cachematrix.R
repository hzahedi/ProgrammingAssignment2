## Comments to be added here .....
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL                             ## initialize inv as NULL
    set <- function(y) {
        x <<- y 
        inv <<- NULL
    }
    get <- function() x                     ## define the get fucntion
    
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv 
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) 
}


## Comments to be added here .....
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("Getting cached Matrix")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv        

}
