library(shiny)

library(dplyr)

shinyServer(function(input,output){
  output$view <- renderTable({

    inFile <- input$file1

    if (is.null(inFile))
      return(NULL)

    dataset <- read.csv(inFile$datapath, header = TRUE)
    dataset[]
   

  })

})