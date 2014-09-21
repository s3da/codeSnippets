#Tapply produces a summary table showing average
#or any function by two variables

with(costsByYearModel, tapply(arc, list(year,ModelCode), mean))

#from repairCosts.Rmd