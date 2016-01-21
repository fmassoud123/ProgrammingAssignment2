## the functions : first will creat a list containing function x <- makeMatrix()
## then  x$set(my.mat) store my.mat .
##
## 


## creat a list containing function to do the following :
#  set the value of the matrix
#  get the value of the matrix
#  set the value of the matrix
#  get the value of the Matrix
#

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y)
       {
        x <<- y
        m <<- NULL
       }
  get <- function() x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m
  list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix )
}

## this function will get the inverse of matrix from cache 
## if it is available otherwise will calculate it.
cacheSolve <- function(x = matrix(), ...) {
  m <- x$getmatrix()
  if(!is.null(m)){
    message("getting cached value")
    return(m)
  }
  m <- x$get()
  m <- solve(mat, ...)
  x$setmatrix(m)
  m
}


