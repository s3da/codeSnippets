#grep names from table

## Extract variables that contain mean() and std().
meansv<-grep("mean\\(",names(allTable))
stdv<-grep("std\\(",names(allTable))
