library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$distPlot <- renderPlot({
        dist <- rnorm(n = input$obs)
        
        require(ggplot2)
        qplot(dist, geom="histogram", binwidth = 0.25)
    })
})
