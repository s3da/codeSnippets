#na.omit()

2) Calculate the mean and median.
```{r}
meanSteps <- mean(na.omit(stepsbyDate$steps))
medSteps <- median(na.omit(stepsbyDate$steps))
```
Mean of steps taken per day:  `r format(meanSteps, nsmall = 1)`  
Median of steps taken per day: `r format(medSteps, nsmall = 1)`
