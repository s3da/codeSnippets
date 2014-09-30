#works for intel 
#doParallel

install.packages("doParallel")
library(doParallel)
detectCores()
#cl <- makeCluster(detectCores())
registerDoParallel(5)
#returns number or cores that will be used
getDoParWorkers()


# run this afterwards
stopCluster(5)

#Get name and version of currently registered backend
getDoParName()
getDoParVersion()



install.packages("doParallel")
library(doParallel)
cl <- makeCluster(detectCores())
registerDoParallel(cl)

#http://cran.r-project.org/web/packages/doParallel/vignettes/gettingstartedParallel.pdf

#http://michaeljkoontz.weebly.com/uploads/1/9/9/4/19940979/parallel.pdf