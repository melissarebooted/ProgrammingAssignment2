## This code caches the matrix and then find the inverse of the matrix

## This section creates the cache for the matrix

makeCacheMatrix <- function(x = matrix()) {
		inv <- NULL 
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This section calculates the inverse of the cached matix.  

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setinverse(inv)
        m
}


