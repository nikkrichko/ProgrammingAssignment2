## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(matrix = matrix()) {
  ## Initialize the inverse property
    inversedMatrix <- NULL
  
  ## Method to set the matrix
  set <- function( inputMatrix ) {
    matrix <<- inputMatrix
    inversedMatrix <<- NULL
  }
  
  ## Method the get the matrix
  get <- function() {matrix}
  
  ## Method to set the inverse of the matrix
  setInverse <- function(inverse) {inversedMatrix <<- inverse}
  
  ## Method to get the inverse of the matrix
  getInverse <- function() {inversedMatrix}
  
  ## Return a list of the methods
  list(set = set, 
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
    ## Return a matrix that is the inverse of 'x'
    inversedMatrix <- x$getInverse()
    
    ## Just return the inverse if its already set
    if( !is.null(inversedMatrix) ) {
        message("getting cached data")
        return(inversedMatrix)
    }
    
    ## Calculate the inverse matrix from matrix from x
    inversedMatrix <- solve(x$get())
    
    ## Set the inverse to the object
    x$setInverse(inversedMatrix)
    
    ## Return the matrix
    inversedMatrix
}
