#replace NA with averages


2) Create a method to fill in the missing values of steps. Will use the average-for-all-days of the 5-minute interval.
```{r}
# Use a logical vector to identify which rows in $steps contain NA
nasteps <- is.na(df$steps)
# create a vector of length(nasteps) that contains the  interval average by repeating the interval average vector by the number of days in the dataset
intavgsteps <- rep(stepsbyInterval$steps, length(stepsbyDate$steps))
```

3) Create new dataset equal to original but with NAs replaced by average-for-all-days of the 5-minute interval.
```{r}
#replace NA's in df$steps with interval averages
newdf <- df
newdf$steps[nasteps] <- intavgsteps[nasteps]
head(newdf)        
```
