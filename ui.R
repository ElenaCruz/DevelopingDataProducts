shinyUI( pageWithSidebar(
  # Application title 
  headerPanel("Children's height prediction"),
  h3("We will predict the heigth of the child, based on the heigth of the parent using the Galton\'s dataset"),
  sidebarPanel(
    numericInput('Parent1Input', 'Height for parent 1 (cms)', 170, min = 140, max = 220, step = 1),
    numericInput('Parent2Input', 'Height for parent 2 (cms)', 170, min = 140, max = 220, step = 1), 
    submitButton('Submit')
  ), mainPanel(
    h3('Results of prediction for the height of the children:'),
    h4("You\'ve entered: "), 
    verbatimTextOutput(inputValue1), h4("as height for parent 1"),
    verbatimTextOutput(inputValue2), h4("as height for parent 2")
#     h4('Which resulted in a prediction of '), verbatimTextOutput("prediction"), h4("as expected height in cm for the child")
  ) )
)