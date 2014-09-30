#ifelse with %in%

newdf$weekday <- weekdays(newdf$date, abbreviate = TRUE)

newdf$dayend <-as.factor(ifelse (newdf$weekday %in% c("Sat","Sun"), "weekend","weekday"))