# multiple ifelse without nesting
# note the use of the mutated/created variable name at the very end



pgnData <- pgnData %>% mutate(wonLost = ifelse(white=="gls10" & result == "1-0", "won", "lost"), wonLost = ifelse(black=="gls10" & result == "0-1", "won", wonLost))
