## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

# Spanish comment
# makeCacheMatrix es un proceso mediante el cual voy a llenar con valores una matrix
# que debe cumplir con los siguientes lineamientos:
# a. debe ser cuadrada
# b. debe contener valores numericos

# english
# makeCacheMatrix is a process where will fill a matrix with values and have some
# specifications like:
# a. have to be a square matrix
# b. values have to be numerics 

makeCacheMatrix <- function(x = matrix()) {




}


## Write a short comment describing this function
## this func() complete to steps
## 1. check if conversion is possible
## 2. if possible make a inverse and return to the caller

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        #1. Check if inverse of matrix "x" can be done
        if(ncol(x)==nrow(x))            ##< this mean is a square matrix and can inverse
                { return(solve(x)) }    ##< returning the result of inverse
        else 
                { print("This matrix can inverse!") } #this create a warning on compile but explain what's happens
}
