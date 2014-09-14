#http://stackoverflow.com/questions/17844143/simple-lookup-to-insert-values-in-an-r-data-frame

#From repairsCost.Rmd
#Key point is to use a two column table as 2nd parameter
#This corrected a problem by using a vectors as 2nd and 3rd parameters
repairsFilled$LastCount <- lookup(repairsFilled$Site,sites[,c(2, 6)])
