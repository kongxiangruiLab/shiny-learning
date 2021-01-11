shinyUI(fluidPage(
  titlePanel("Daily data selection test"),
  sidebarLayout(
    sidebarPanel(
      fileInput('file1', 'Choose CSV File',
                accept=c('text/csv', 
                         'text/comma-separated-values,text/plain', 
                         '.csv')),
     
      # dateInput("date", label = h3("Date input"),value = "2020-01-01"),
      textInput("caption","caption: ", " ") ,
      submitButton("submit")
    ),
    
  mainPanel(
    h3(textOutput("caption","date", container = span)),
    tableOutput("view")
  )
  )
))
