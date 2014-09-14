#http://www.r-bloggers.com/r-function-of-the-day-tapply/

## Generic Example
## tapply(Summary Variable, Group Variable, Function)
    
# This shows how to use tapply with "with"

with(repairsClean, tapply(TotalRA, ModelCode, mean))
