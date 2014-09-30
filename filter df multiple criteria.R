#Filter df on multiple criteria - subset subsetting



#Since this analysis deals with injuries, fatalities, property damage, and crop damage, remove observations that don't meet these criteria
```{r}
stormdata<-stormdata[stormdata$FATALITIES > 0 | stormdata$INJURIES > 0 | stormdata$PROPDMG > 0 | stormdata$CROPDMG > 0,]
dim(stormdata)
