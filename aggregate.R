# sum all Totals for each month
# aggregate
# from repairsCost
repairsYM <- aggregate(x=repairs$Total, by=list(Site=repairs$Site, YM=repairs$YM), FUN=sum)
