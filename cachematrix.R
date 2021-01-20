## Put comments here that give an overall description of what your
## functions do
##Function is meant to inverse and store a matrix.

## Write a short comment describing this function
##This function captures and store the original matrix and the inverted matrix.

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set<-function(y){
      x<<-y
      m<<- NULL
  }
  get <-function() x
  setinv <- function(solve) m<<-solve
  getinv <- function() m
  list(set = set, get = get, 
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function
##This function checks to see if the matrix has been already been calculated.
##If it has been it returns the stored value otherwise it calculates it, 
##displays it and captures it into the makeCacheMatrix function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getinv()
  if(!is.null(m))
  {
    message("Getting cached data")
    return(m)
  }
  data<-x$get()
  m<-solve(data)
  x$setinv(m)
  m
  
  
}
