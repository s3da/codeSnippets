#from repairsCosts.Rmd

#Number each month in ascending order by site (e.g., first month is 1, second 2, third 3, etc.)
```{r}
repairsFilled <- ddply (repairsFilled, "Site", transform, moNum=rank(Date))