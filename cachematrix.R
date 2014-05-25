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
                { x <<- y }
        
        get <- function() x
        
        set.inverse <- function(i) inv.cache <<- i
        get.inverse <- function() inv.cache
        
        ## Here we assign the value to the variable on top-level
        #CachedMatrix <<- cacheSolve(x)
        
        list(set = set, get = get)
}


## Write a short comment describing this function
## this func() complete two steps
## 1. check if conversion is possible
## 2. if possible make a inverse and return to the caller If the inverse has already been calculated 
cacheSolve <- function(x, ...) 
{
        ## Return a matrix that is the inverse of 'x'
        
        # Try to get the inverse matrix from cache
        # and check if NOT exist the inverse in cache.If exist return it
        if(!is.null(x$get.inverse())) 
                { return(inv) }
        else 
                {
                
                        data <- x$get()
                        x.set.inverse(solve(data))


        data <- z$get()
        inverse <- solve(data, ...)
        z$set.inverse(inverse)

                }
        
        #because NOT EXISTS bring the matrix
        myData <- x$get()
        
        #1. Check if inverse of matrix "x" can be done
        if(ncol(x)==nrow(x))                    ##< only square matrix can be done 
                { x$set(solve(myData)) }        ##now set the inverse

}
