## I input 'x' as matrix
## And then set solved value "svl" as null
## Change every reference "inverse" to "solveval"
## For this assignment, there are two functions makeCachematrix and cacheSolveVal
## makeCachematrix function make a special matrix that caches its inverse
## makeCachematrix function cotains set, get, setsolveval, getsolveval
makeCachematrix <- function(x = matrix()) {
  svl <- NULL
  ##initialize svl as NULL
  set <- function(y){
    x <<- y
    svl <<- NULL
  }
  ## Get function returns the value of matrix argument
  get <- function() {x}
  setsolveval <- function(solveval) {sv <<- solveval}
  getsolveval <- function() {svl}
  list (set = set, get = get, setsolveval = setsolveval, getsolveval = getsolveval)
}

## Same procedure, change "inverse" to "solveval"
## cacheSolveVal function solves the inverse of the special matrix
## If the inverse is already calculated, cacheSolveVal retrieves inverse from the cache
cacheSolveVal <- function(x, ...) {
  svl <- x$getsolveval()
  if (!is.null(svl)) {
    message("getting cached data")
    ## return function returns the solve value
    return(svl)
  }
  data <- x$get()
  ## Used to compute the solve value
  svl <- solve(data, ...)
  x$setsolveval(svl)
  svl
}
