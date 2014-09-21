#formatC was used to create filenames from a number



for (i in seq_along(id)){
    ##convert id into filename
    filename<-paste(formatC(i,width=3, flag="0"), ".csv", sep="")
    ## OLD CODE
    ##convert numeric id into 1 to 3 digit character
    ##file name prefix with .csv suffix
    ##prepend 0's dending on # of digits in ID
    ##store in filename
    ##works for ids less than 1000
    ##if(id[[i]]<100){
    ##        filename<-paste("0",id[[i]],".csv",sep="")
    ##        }
    ##if(id[[i]]<10){
    ##        filename<-paste("00",id[[i]],".csv",sep="")
    #        }
    #if(id[[i]]>99){
    #        filename<-paste(id[[i]],".csv",sep="")
    #        }
    