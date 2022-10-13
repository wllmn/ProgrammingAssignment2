## Assignment is absurdly difficult for the second assignment of an "intro" 
## programming course considering that it introduces a new concept that hasn't
## been previously discussed (i.e. caching)

## Caches the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  inverted_matrix <<- cacheSolve(x)
}


## Returns the inverse of a matrix

cacheSolve <- function(x, ...) {
  return(solve(x))
}