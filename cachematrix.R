## Put comments here that give an overall description of what your
## functions do

## the function computes the inverse of the special matrix through set and get 
make.Cachematrix <-function (x = matrix()) { 
}
## this function is also used to create a 'special matrix' 
## that cache its inverse
##in this function i used the 'x' and 'z' 
  inv <<-- NULL ##null is considered as undefined therefore 'inv' is considered NULL
set <- function (z) {  ## here we assign the function to 'z'
  x <-- z
  inv <-- NULL
}
get <-- function (z) x ##here we will verify we would get the correction function we recently assigned it to 
setInverse <- function (solveMatrix) inv <<- solveMatrix ##solve the matrix in order to get the inverse
getInverse <- function (inv) 
  list(set=set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)  ## in this list this is where we can see that the 
##functions are always equal to their designated function
}
##In this part, the function is used to solve the cache simply by computing 
##the special matrix we already did above
#the function is also used to return the matrix in the respective inverse of 'x'
cacheSolve<- function (x){
  inv <-x$getInverse()
  if(!is.null(inv)){
  message ("getting cached data")
  return (inv)  
  }
  mat <-x$get()
  inv <- solve (mat, ...)
  x$setInverse (inv)
  inv
}
##after the indicated function above we could get the calculated inverse from the matrix we've done


