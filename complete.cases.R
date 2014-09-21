#complete.cases


##create logical index to show complete rows
completerowstable<-complete.cases(currenttable)
##count complete rows
nrows<-sum(completerowstable, na.rm=TRUE)
##store number of complete rows in data.frame
tcompleteobs[[i,2]]<-nrows
} ##end for loop
print(tcompleteobs)
}
