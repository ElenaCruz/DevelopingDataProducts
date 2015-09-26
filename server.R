

childrenHeight <- function(Parent1Input,Parent2Input) mean(c(Parent1Input, Parent2Input))
shinyServer(function(input, output){
  output$Parent1Input<- renderPrint({input$Parent1Input})
  output$Parent2Input <- renderPrint({input$Parent2Input})
  output$prediction <- renderPrint({childrenHeight(input$Parent1Input,input$Parent2Input)})})