## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

# makeCacheMatrix is a process where will fill a matrix with values and have some
# specifications like:
# a. have to be a square matrix
# b. values have to be numerics 

makeCacheMatrix <- function(x = matrix()) 
{
        #1 create empty var for the inverse matrix 
        CachedMatrix <- NULL
        
        set <- function(y) 
        {
                x <<- y
        }
        
        #get <- function() x
        
        ## Here we assign the value to the variable on top-level
        CachedMatrix <<- cacheSolve(x)
        
        #list(set = set, get = get)
}


## Write a short comment describing this function
## this func() complete two steps
## 1. check if conversion is possible
## 2. if possible make a inverse and return to the caller
## If the inverse has already been calculated 
cacheSolve <- function(x, ...) 
{
        ## Return a matrix that is the inverse of 'x'
        
        # Try to get the inverse matrix from cache
        inverse <- x$get.inverse()  

        #1. Check if inverse of matrix "x" can be done
        #   and matrix is not null
        if(ncol(x)==nrow(x) && !is.null(x)              ##< only square matrix can be done 
           && !identical(CachedMatrix, x))              ##< If the inverse has not already been calculated 
                { return(solve(x)) }                    ##< returning the result of inverse
        else 
                { print("This matrix can inverse!") } #this create a warning on compile but explain what's happens
}
