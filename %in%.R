#%in%


##CHECK VALID PARAMETERS
validstate<-state %in% state.abb
if (validstate != "TRUE"){
    stop("invalid state")
} 

outcomelist<-c("heart attack","heart failure","pneumonia")

validoutcome<-outcome %in% outcomelist
if (validoutcome != "TRUE"){
    stop("invalid outcome")
} 

