library(shiny)
# myPaths <- .libPaths("C:/Program Files/R/R-3.6.2/library")
# myPaths <- c(myPaths)
# .libPaths(myPaths)  # add new path
# .libPaths()
shinyApp(
  
  ui = shinyUI(htmlTemplate("www/index.html")),
  
  server = shinyServer(function(input, output) {
    
    data1 <- data.frame(iris)
    
    output$title <- renderText('Shiny Custom HTML Template')
    
    output$summary <- renderPrint(summary(data1))
    
    output$plot1 <- renderPlot(plot(data1[,c(2,3)]))
    
    output$plot2 <- renderPlot(plot(data1[,c(3,4)]))
    
    
    
  })
  
)
