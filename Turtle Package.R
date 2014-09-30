library(caret)
library(kernlab)
data(spam)

inTrain <- createDataPartition(y=spam$type, p=.75, list=FALSE)
training <- spam[inTrain]

set.seed(32323)
folds<- createFolds(y=spam$type, k=10, list=TRUE, returnTrain=TRUE)
str(folds)
sapply (folds, length)


#Turtle Package
install.packages("TurtleGraphics")

library(TurtleGraphics)
turtle_init()
turtle_col("gray25")
for (i in 1:150) {
        turtle_forward(dist=1+0.5*i)
        turtle_right(angle=89.5)}
turtle_hide()