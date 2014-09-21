#aggregate


## Average each variable by activity and subject
DataSetMeans<-aggregate(means.std.df[,c(3:68)],
                        by=list(Subject=means.std.df$Subject, Activity=means.std.df$Activity),
                        FUN=mean)