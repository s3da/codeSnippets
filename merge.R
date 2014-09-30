#Merge the injuries and fatalities to create a human health (hh) database. Then sum injuries and fatalities for a combined total.
# From RR project 2

```{r}
hh <- merge(fatalities, injuries)
hh$Combined <- hh$Fatalities + hh$Injuries
```