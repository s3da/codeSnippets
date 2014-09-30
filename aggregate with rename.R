#aggregate with a rename

## What is mean total number of steps taken per day?
Sum steps by days. Ignore missing/NA values. This is assumed to be the mean of the total number of steps for each day.
```{r SumStepsByDay}
stepsbyDate <- aggregate(x = df$steps, 
                         by = list("date" = df$date), 
                         na.rm = TRUE,
                         FUN = sum, 
                         simplify = TRUE)

names(stepsbyDate)[2] <- "steps"   #rename x from aggregate() to steps

head(stepsbyDate)