shinyUI(fluidPage(
  titlePanel(h1("Hello shiny")),
  sidebarLayout(position="right",
  sidebarPanel(
    sliderInput(inputId = "bins",
                label = "Number of bins:",
                min = 1, max = 50, value = 30)
  ),
  mainPanel(plotOutput(outputId = "displot")))
  )
  )

  