library(UsingR)
data(galton)

childrenHeight <- function(Parent1Input,Parent2Input) mean(Parent1Input, PArent2Input)
shinyServer( function(input, output) {
  output$inputValue1 <- renderPrint({input$Parent1Input})
  output$inputValue2 <- renderPrint({input$Parent2Input})
  output$prediction <- renderPrint({childrenHeight(input$Parent1Input, input$Parent2Input)}) }
  