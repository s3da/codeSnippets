# server.R

source("helpers.R")
counties <- readRDS("data/counties.rds")
library(maps)
library(mapproj)

shinyServer(
    function(input, output) {
        
        output$map <- renderPlot({
            data <- switch(input$var, 
                "Percent White" = counties$white,
                "Percent Black" = counties$black,
                "Percent Hispanic" = counties$hispanic,
                "Percent Asian" = counties$asian)
            
            c <- switch(input$var, 
                "Percent White" = "mediumspringgreen",
                "Percent Black" = "darkorchid2",
                "Percent Hispanic" = "dodgerblue",
                "Percent Asian" =  "tomato3" )
            
            
            percent_map(var = data, color = c, 
                    legend.title = input$var, 
                    max = input$range[2], min = input$range[1])
        })
        
    }
)