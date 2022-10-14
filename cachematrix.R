## Functions to take the inverse of a square matrix and cache the result

## Creates a matrix whose inverse can be cached

makeCacheMatrix <- function(x = matrix()) {
    inverse_matrix <- NULL
    set <- function(y) {
      x <<- y
      inverse_matrix <<- NULL
    }
    get <- function() x
    set_inverse <- function(inverse) inverse_matrix <<- inverse
    get_inverse <- function() inverse_matrix
    list(set = set, 
         get = get,
         set_inverse = set_inverse,
         get_inverse = get_inverse)
}


## Returns the inverse of the matrix x. If the inverse matrix has been cached, 
## function returns the cached data, otherwise calculates and returns the inverse

cacheSolve <- function(x, ...) {
    inverse_matrix <- x$get_inverse()
    if(!is.null(inverse_matrix)) {
        message("getting cached inverse")
        return(inverse_matrix)
    }
    data <- x$get()
    inverse_matrix <- solve(data, ...)
    x$set_inverse(inverse_matrix)
    inverse_matrix
}