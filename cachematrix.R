# Coursera RProgramming Course (rprog-033) assignment 2 by Jeff Swartzel, 10-22-15
# This script contains 2 functions for programming assignment 2.
# Together these functions can be used to cache the potentially 
# time consuming calculation of inverting a matrix.

#############

# This function, makeCacheMatrix(), will create a list containing 4 separate functions
# that are used to create special objects that will store a matrix and cache its inverse.
# 1. set() will set the value of the matrix
# 2. get() will get the value of the matrix
# 3. getInverse() will get the value of the inverse matrix
# 4. setInverse() will set the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set<-function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m
  list(set=set, get=get,
       setInverse=setInverse,
       getInverse=getInverse)

}

#############

# This function, cacheSolve(), calculates the inverse of the 
# special matrix created by makeCacheMatrix.  However, it will first check to see 
# if the inverse has already been calculated.  If the inverse has already been 
# calculated, it will retrieve the already calculated inverse.

cacheSolve <- function(x, ...) {
        
  m <- x$getInverse()
  if(!is.null(m)){
    message("getting cached inverse")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setInverse(m)
  # Return a matrix that is the inverse of 'x'
  m
}

#############

# This code will create a large, invertible matrix called "myMatrix".
# myMatrix<-matrix(runif(3000^2),3000)
# This can be used to test the functions. 

#############

#this is my 3rd commit
