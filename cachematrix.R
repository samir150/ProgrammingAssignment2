## Put comments here that give an overall description of what your
## functions do

## these functions  are able to solve matrix and  stor the result, for not take time to solve 
##the same matrix again, jest getting the data from the old operation

## Write a short comment describing this function

## this function create the matrix and allow as to store the data 


makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y       # set x == Y in the parent level
                m <<- NULL    # set m == NULL in the parent level
        }
        get <- function() x
        
        setinverse <- function(solve) m <<- solve
        
        getinverse <- function() m
        
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function

## this function solves the matrix that we create with the first function 


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()     ##  get the stored data if any
        if(!is.null(m)) {
                message("getting cached data")  ## if m != 0 (data ) return inverse matrix without calculation
                return(m)
        }
        data <- x$get()                      ## solve matrix in case m == 0 ( no data )
        m <- solve(data, ...)                
        x$setinverse(m)
        m
        
}


#***************************************



#***********************************************

