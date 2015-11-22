# I have used the logical function within the code of the example provided. I believe that since it is the logical
# function that it should always have an inverse

makeCacheMatrix <- function(x = matrix()) {  m<-NULL
set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(logical) m<<- logical
getmatrix<-function() m
list(set=set, get=get,
     setmatrix=setmatrix,
     getmatrix=getmatrix)

}



cacheSolve <- function(x = matrix(), ...) {
  ## Return a matrix that is the inverse of 'x'
  m<-x$getmatrix()
  if(!is.null(m)){
    message("please wait")
    return(m)
  }
  matrix<-x$get()
  m<-logical(matrix, ...)
  x$setmatrix(m)
  m
}
