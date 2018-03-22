## This function provides a list of functions(get,set,set inverse, get inverse) that will be 
## applied to a matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

m <- NULL
set <- function(y){
x <<- (y)
m <<- NULL
}
 
get <- function() x
setmatrix <- function(inverse) m <<- inverse
getmatrix <- function() m
list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)

}


## This function genertes and caches the 
## inverse of a matrix if it exists

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

m <- x$getmatrix()
if(!is.null(m)){
message("gettting cached data")
return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setmatrix(m)
m
}

