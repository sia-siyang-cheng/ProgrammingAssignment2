## Put comments here that give an overall description of what your
## functions do

## I am creating a function to calculate the inverse of a square matrix with the solve function

## This function creates a matrix that can cache its inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        p <- NULL
        set <- function(y){
                x << -y
                p <<- NULL
                }
        g <- function()x
        set_1 <-function()p <<-solve(x)
        set_2 <-function()p
        list(set=set,g=g,
             set_1=set_1,
             set_2=set_2)
}


## Write a short comment describing this function
## This function calculate the inverse of the matrix above

cacheSolve <- function(x, ...) {
        p <- x$obt()
        if(!is.null(p)){
                return(p)
        }
        q <- x$set_1()
        p <-solve(t,...)
        x$set(p)
        p
}
