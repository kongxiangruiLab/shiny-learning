shinyServer(function(input,output){
  datasetinput <- reactive({
    switch(input$dataset,
           "rock"=rock,
           "pressure"=pressure,
           "cars"=cars)
           })
  
    output$summary <- renderPrint({
      dataset <- datasetinput()
      summary(dataset)
    })
    output$view <- renderTable({
      head(datasetinput(),n=input$obs)
  })
})


