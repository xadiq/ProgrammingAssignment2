## Below function calculates invertibleof square matrix

## Returns list of functions

makeCacheMatrix <- function(x = matrix()) {
  iMatrix <- NULL
  
setMatrixData <- function(inputMatrix){
  x <- inputMatrix
  iMatrix <<- NULL
}

getMatrixData <- function() x

setInvert <- function(invert) iMatrix <<- invert

getInvert <- function() iMatrix

list(setMatrixData = setMatrixData, getMatrixData = getMatrixData, setInvert = setInvert, getInvert= getInvert )
}


## calculate list 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  iMatrix <- x$getInvert()
  if(!is.null(iMatrix)){
    
    message("getting cashed data")
    return(iMatrix)
  }
  
  data <- x$getMatrixData()
  iMatrix <- solve(data)
  x$setInvert(iMatrix) 
iMatrix
}
