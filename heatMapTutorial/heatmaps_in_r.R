# http://sebastianraschka.com/Articles/heatmaps_in_r.html#script
#########################################################
### A) Installing and loading required packages
#########################################################

if (!require("gplots")) {
   install.packages("gplots", dependencies = TRUE)
   library(gplots)
   }
if (!require("RColorBrewer")) {
   install.packages("RColorBrewer", dependencies = TRUE)
   library(RColorBrewer)
   }


#########################################################
### B) Reading in data and transform it into matrix format
#########################################################

data <- read.csv("heatmaps_in_r.csv", comment.char="#")
rnames <- data[,1]                            # assign labels in column 1 to "rnames"
mat_data <- data.matrix(data[,2:ncol(data)])  # transform column 2-5 into a matrix
rownames(mat_data) <- rnames                  # assign row names 

set.seed(5)
mat_data[,1] <- round(rnorm(10,0,1),3)
mat_data[,2] <- round(rnorm(10,0,1),3)
mat_data[,3] <- round(rnorm(10,0,1),3)
mat_data[,4] <- round(rnorm(10,0,1),3)


#########################################################
### C) Customizing and plotting the heat map
#########################################################

# creates a own color palette from red to green
my_palette <- colorRampPalette(c("red", "yellow", "green"))(n = 299)

# (optional) defines the color breaks manually for a "skewed" color transition
col_breaks = c(seq(-3,0,length=100),  # for red
  seq(0,0.8,length=100),              # for yellow
  seq(0.8,3,length=100))              # for green

# creates a 1025 x 500 inch image
png("heatmaps_in_r.png",    # create PNG for the heat map        
  width = 1500,        # 5 x 300 pixels
  height = 736,
  res = 300,            # 300 pixels per inch
  pointsize = 8)        # smaller font size

heatmap.2(mat_data, 
  cellnote = mat_data,  # same data set for cell labels
  main = "Heat Map", # heat map title
  notecol="navy",      # change font color of cell labels to black
  density.info="none",  # turns off density plot inside color legend
  trace="none",         # turns off trace lines inside the heat map
  margins =c(.10,.10),     # widens margins around plot
  col=my_palette,       # use on color palette defined earlier 
  breaks=col_breaks,    # enable color transition at specified limits
  dendrogram="row",     # only draw a row dendrogram
  Colv="NA")            # turn off column clustering

dev.off()               # close the PNG device