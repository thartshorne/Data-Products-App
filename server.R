waitTime = function (time) {
  median(faithful$waiting[round(faithful$eruptions, digits = 2) == time])
}

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$time})
    output$prediction <- renderPrint({waitTime(input$time)})
  }
)