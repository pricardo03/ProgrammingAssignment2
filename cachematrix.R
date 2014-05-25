## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

# makeCacheMatrix is a process where will fill a matrix with values and have some
# specifications like:
# a. have to be a square matrix
# b. values have to be numerics 

makeCacheMatrix <- function(x = matrix()) 
{
        #set <- function(y) {x <<- y}
        
        #get <- function() x
        
        ## Here we assign the value to the variable on top-level
        CachedMatrix <<- cacheSolve(x)
        
        #list(set = set, get = get)
}


## Write a short comment describing this function
## this func() complete two steps
## 1. check if conversion is possible
## 2. if possible make a inverse and return to the caller

cacheSolve <- function(x, ...) 
{
        ## Return a matrix that is the inverse of 'x'
        #1. Check if inverse of matrix "x" can be done
        if(ncol(x)==nrow(x))            ##< this mean is a square matrix and can inverse
                { return(solve(x)) }    ##< returning the result of inverse
        else 
                { print("This matrix can inverse!") } #this create a warning on compile but explain what's happens
}
