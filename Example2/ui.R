
shinyUI(fluidPage(
 titlePanel("shiny text"),
 
 sidebarLayout(
   
   sidebarPanel(
   selectInput(inputId = "dataset", label="choos a dataset:",
                choices = c("rock","pressure","cars")),
     
   numericInput(inputId = "obs",label = "Number of will view:",value=2)
   ),
   
   mainPanel(
     verbatimTextOutput("summary"),
     tableOutput("view"))
   )
)
)
 


 