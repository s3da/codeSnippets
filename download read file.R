#download and read file


First, establish libraries, file names, paths, and URLs.

## Raw data originally downloaded May 18, 2014
URLrawdata1 <-"https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
datadir <- "data"
zipfile1 <- "stormdata.csv.zip"
file1 <- "stormdata.csv"
library(ggplot2)
library(reshape2)


#Check that the data directory and bz2 zip file exist; Create if they don't.

if (!file.exists(datadir)) {
        dir.create(datadir)
}



## Check that zipfile1 exists in datadir. Download if not.
##setInternet is needed in Windows for Knitr
setInternet2(TRUE)
if (!file.exists(paste(datadir, "/", zipfile1, sep=""))){
        download.file(URLrawdata1, paste(getwd(),"/",datadir,"/",zipfile1, sep=""))
} 


#Read the storm data file.  The file is a .CSV file within a .bz2 zip archive. 
```{r}
if(!exists("stormdata")) {
        if (file.exists(paste(datadir, "/", zipfile1, sep=""))){
                stormdata <- read.csv(bzfile(paste(datadir,"/",zipfile1, sep="")),
                                      nrows=903000)
} else {print("stormdata already loaded")}
}
```

After reading the file, examine the first few rows and other characteristics of the data.
```{r}
dim(stormdata)
head(stormdata)
```
