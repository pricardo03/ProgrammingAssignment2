## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

# makeCacheMatrix is a process where will fill a matrix with values and have some
# specifications like:
# a. have to be a square matrix
# b. values have to be numerics 


makeCacheMatrix <- function(x = matrix()) {
    CacheForInverse <- NULL
    #Inv.cache <- NULL

    set <- function(y) {
        # `<<-` sets the values of x and inv.cache in makeCacheMatrix's
        # environment and not this function
        x <<- y
	CacheForInverse <<- NULL
#        inv.cache <<- NULL
    }

    get <- function() x

    SetInverse <- function(i) CacheForInverse <<- i
    GetInverse <- function() CacheForInverse 

#    set.inverse <- function(i) inv.cache <<- i
#    get.inverse <- function() inv.cache
   
    return (list(set = set, get = get, SetInverse = SetInverse, GetInverse = GetInverse))

}


cacheSolve <- function(x, ...) {
    # Try make inverse from cache
    inverse <- x$get.inverse()   
    
    # now check if the inverse exists
	if(!is.null(inverse)) 
	{
		message("getting cached data")
        	return(inverse)
    	} 
	else 
	{
        Data <- x$get()
        inverse <- solve(Data, ...)
        x$set.inverse(inverse)
        
        return(inverse)
	}
}
