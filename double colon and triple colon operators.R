#Skip the search-and-find
#If you know exactly which package contains the object desired then you can reference it directly using the :: operator. Simply place the package name before the operator and the name of the object after the operator to retrieve it.

# use :: to get sd

stats::sd 

# function (x, na.rm = FALSE) 
# { 
#     ... ( omitted for brevity )
# } 
# <bytecode: 000000000511D608> 
#     <environment: namespace:stats>
#If the object is not exported or you are unsure, then you can use the ::: operator (notice the extra colon).

# use ::: to get Wilks

# Wilks 
#Error: object 'Wilks' not found 

stats:::Wilks 

# function (eig, q, df.res) 
# { 
#     ... ( omitted for brevity ) 
# } 
# <bytecode: 00000000050FE280> 
#     <environment: namespace:stats>
#     This operator searches the namespace environment for the given object (as we discussed, non-exported objects do not appear in the package environment, only in the namespace environment). You can validate that by looking at the definition of ::: (remember to include the backticks).
# 
# # view the ::: operator function

# `:::` 
# function (pkg, name) 
# { 
#     pkg <- as.character(substitute(pkg)) 
#     name <- as.character(substitute(name)) 
#     get(name, envir = asNamespace(pkg), inherits = FALSE) 
# } 
# <bytecode: 00000000073BAEA8>
#     <environment: namespace:base>