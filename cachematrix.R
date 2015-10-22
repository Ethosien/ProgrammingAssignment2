## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

myMatrix<-matrix(data=c(2,3,2,1,2,1,1,1,2),ncol=3,nrow=3)

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set<-function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m
  list(set=set,
       get=get,
       setInverse=setInverse,
       getInverse=getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


#this is my 2nd commit
