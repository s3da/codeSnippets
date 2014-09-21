#subset with min


##The next 3 if statements do the same thing but select a col
##depending on the outcome parameter.
##First, covert the right col to numeric
##Then, subset the rows whose mortality col is the min
##CASE 1    OUTCOME == HEART ATTACK
if (outcome == outcomelist[1]) {
    outcomeforastate[,11]<-as.numeric(outcomeforastate[,11])
    bestmortality<-outcomeforastate[outcomeforastate[,11]==min(outcomeforastate[,11],na.rm=TRUE),]
}
##CASE 2    OUTCOME == HEART FAILURE
if (outcome == outcomelist[2]) {
    outcomeforastate[,17]<-as.numeric(outcomeforastate[,17])
    bestmortality<-outcomeforastate[outcomeforastate[,17]==min(outcomeforastate[,17],na.rm=TRUE),]
}        
##CASE 3    OUTCOME == PNEUMONIA
if (outcome == outcomelist[3]){
    outcomeforastate[,23]<-as.numeric(outcomeforastate[,23])
    bestmortality<-outcomeforastate[outcomeforastate[,23]==min(outcomeforastate[,23],na.rm=TRUE),]
}        
