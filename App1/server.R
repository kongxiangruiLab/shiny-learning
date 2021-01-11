shinyServer(function(input,output){
  output$displot <- renderPlot({
    x=faithful$waiting
    bins <- seq(min(x),max(x),length.out = input$bins)
    hist(x,breaks = bins,col = "blue",border = "white",
         xlab = "waiting time to nwxt eruption(in mins)",
         main = "Histogram of waiting times")
  })
})