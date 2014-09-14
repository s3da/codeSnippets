
hurricane = toupper(c("hurricane", "typhoon", "tropical storm"))
test<-c("x","y","hurricane","TYPHOON", "tropical storm","xx","yy")
test[grep(paste(hurricane, collapse="|"), test)]<-"HURRICANE"
