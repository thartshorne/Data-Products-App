library(shiny)
library(datasets)

shinyUI(
  pageWithSidebar(
    headerPanel("Old Faithful Eruption Waiting Times"),
    sidebarPanel(
      h3("Enter the duration of the previous eruption in two digits"),
      h3("Then click Submit"),
      numericInput('time', 'Eruption Duration (mins)', 3.5, min = 1.6, max = 5.1, step = .1),
      submitButton('Submit'),
      h2("Documentation"),
      h4("To use this app, first input the duration of the previous eruption in two digits
         and click submit. The expected time until the next eruption is shown based on the median 
         wait time of previous eruptions of that duration.")
    ),
    mainPanel(
      h3('Waiting Time'),
      h4('For an eruption time of'),
      verbatimTextOutput("inputValue"),
      h4('minutes, you should expect to wait an average of '),
      verbatimTextOutput("prediction"),
      h4('minutes until the next eruption')
    )
  )
)