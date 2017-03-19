
## makeCacheMatrix creates a function to cache its inverse 

## it returns 4 functions set value, get value, set mean, get mean values



## Write a short comment describing this function



makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  
  set <- function(y) {
    
    x <<- y
    
    m <<- NULL
    
  }
  
  get <- function() x
  
  setmean <- function(mean) m <<- mean
  
  getmean <- function() m
  
  list(set = set, get = get,
       
       setmean = setmean,
       
       getmean = getmean)
  
  
  
}





## the 2nd function is to retrieve/computate the mean values and then be uesd by the first function makeCacheMatrix



cacheSolve <- function(x, ...) {
  
  ## Return a matrix that is the inverse of 'x'
  
  
  
  m <- x$getmean()
  
  if(!is.null(m)) {
    
    message("getting cached data")
    
    return(m)
    
  }
  
  data <- x$get()
  
  m <- mean(data, ...)
  
  x$setmean(m)
  
  m
  
}
