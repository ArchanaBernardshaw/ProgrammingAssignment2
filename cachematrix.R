## The below functions are used to calculate the matrix inverse for the given matrix by setting the value in cache


## To set the values in cache use set,get,setmatrixinv and getmatrixinv variables 

makeCacheMatrix <- function(x = matrix()) {

## assigning m to NULL
 m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        ## setting the function and object
        setmatrixinv <- function(invmatrix) m <<- invmatrix
        ## Getting the object
        getmatrixinv <- function() m
        
## Returns list of objects set, get , setmatrixinv,getmatrixinv
        list(set = set, get = get,
             setmatrixinv = setmatrixinv,
             getmatrixinv = getmatrixinv)

}


## In cacheSolve function we are getting the values from cache by using setmatrixinv and getmatrixinv object. solve() function is used to get the matrix inverse for the given matrix

cacheSolve <- function(x, ...) {
        
         m <- x$getmatrixinv()
        if(!is.null(m)) {
                message("getting cached data")
                ## Return a matrix that is the inverse of 'x'
                return(m)
        }
        data <- x$get()
        ## solve() is used to get the inverse matrix for the given matrix
        m <- solve(data)
        x$setmatrixinv(m)
        m
}
