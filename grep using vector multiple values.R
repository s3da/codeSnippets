#PeerAssessment2.Rmd
"D:\My Documents\Courses\JHU Data Science\5 Reproducible Research\Peer Assessment 2\PeerAssessment2.Rmd"


hurricane = toupper(c("hurricane", "typhoon", "tropical storm"))

test<-c("x","y","hurricane","TYPHOON", "tropical storm","xx","yy")

test[grep(paste(hurricane, collapse="|"), test)]<-"HURRICANE"

test