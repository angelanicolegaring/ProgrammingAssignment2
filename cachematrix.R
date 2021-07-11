##angelanicolegaring
##R programming requirement
## My matrix variable is c, and nprdg as my null
## an extraordinary matrix in makeCachematrix storse values
makeCachematrix <- function(c = matrix()) {
  
  nprdg <- NULL
  set <- function(g){
    c <<- g
    nprdg <<- NULL
    
  }
 
  get <- function() {c}
  setcomputation <- function(computation) {kmdg <<- computation}
  getcomputation <- function() {nprdg}
  list (set = set, 
        get = get, 
        setcomputation = setcomputation, 
        getcomputation = getcomputation)
  
}
## Values gathered @cachematrix
## pmxdg<- makeCachematrix(matrix(1:100, nrow=10, ncol=10))
## pmxdg$get()
##[,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
##[1,]    1   11   21   31   41   51   61   71   81    91
##[2,]    2   12   22   32   42   52   62   72   82    92
##[3,]    3   13   23   33   43   53   63   73   83    93
##[4,]    4   14   24   34   44   54   64   74   84    94
##[5,]    5   15   25   35   45   55   65   75   85    95
##[6,]    6   16   26   36   46   56   66   76   86    96
##[7,]    7   17   27   37   47   57   67   77   87    97
##[8,]    8   18   28   38   48   58   68   78   88    98
##[9,]    9   19   29   39   49   59   69   79   89    99
##[10,]   10   20   30   40   50   60   70   80   90   100
 
## it computtes matrix
cachecomputation <- function(x, ...) {
  nprdg <- c$getcomputation()
  if (!is.null(nprdg)) {
    
    message("obtaining cache values")
    return(nprdg)
    
  }
  
  figs <- c$get()
  nprdg <- compute (figs, ...)
  c$setcomputation(nprdg)
  nprdg
  
}

##values gathered @cacehe computation
##[,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
##[1,]    1   11   21   31   41   51   61   71   81    91
##[2,]    2   12   22   32   42   52   62   72   82    92
##[3,]    3   13   23   33   43   53   63   73   83    93
##[4,]    4   14   24   34   44   54   64   74   84    94
##[5,]    5   15   25   35   45   55   65   75   85    95
##[6,]    6   16   26   36   46   56   66   76   86    96
##[7,]    7   17   27   37   47   57   67   77   87    97
##[8,]    8   18   28   38   48   58   68   78   88    98
##[9,]    9   19   29   39   49   59   69   79   89    99
##[10,]   10   20   30   40   50   60   70   80   90   100

##same values appeared @both functions
##the code runs smoothly, no error
