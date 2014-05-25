## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

# makeCacheMatrix is a process where will fill a matrix with values

makeCacheMatrix <- function(x = matrix()) 
{
	CacheForInverse <- NULL			#empty var
    
	set <- function(y) 			#setting the matrix
    	{
        	x <<- y
		CacheForInverse <<- NULL
    	}

    	get <- function() x			#get values from matrix
	
    	SetInverse <- function(i) CacheForInverse <<- i	#setting results
    	GetInverse <- function() CacheForInverse 	#getting the inverse values

    	return (list(set = set, get = get, SetInverse = SetInverse, GetInverse = GetInverse))

}

# this Fucntion make the magic making the inverse for the matrix
cacheSolve <- function(x, ...) 
{
    	# Try make inverse from cache
    	BuilInverse <- x$GetInverse()   
    
    	# now check if the inverse exists
	if(!is.null(BuilInverse)) 
		{ message("getting cached data") } 	#a message and return at the end
	else 
	{
        	Data <- x$get()				#get the matrix
        	BuilInverse <- solve(Data)		#inverse the matrix
        	x$SetInverse(BuilInverse)		#and set new value in the matrix 
	}
	
	return(BuilInverse)	##Whatever is the flow always return the Inverse
}
