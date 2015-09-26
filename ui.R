shinyUI( pageWithSidebar(
  # Application title 
  headerPanel("Children's height prediction"),
  sidebarPanel(
    h5('We will predict the height of the children considering the height of the parents. Please input the height values and click submit.'),
    numericInput('Parent1Input', 'Height for parent 1 (cms)', 170, min = 140, max = 220, step = 1),
    numericInput('Parent2Input', 'Height for parent 2 (cms)', 170, min = 140, max = 220, step = 1), 
    submitButton('Submit')),
  mainPanel(
    h3('Results of prediction for the height of the children:'),
     h4("You\'ve entered the following value for the first parent's height: "),
     verbatimTextOutput('Parent1Input'), 
     h4("You\'ve entered the following value for the second parent's height: "),
     verbatimTextOutput('Parent2Input'),
     h4('Which resulted in a prediction of '), verbatimTextOutput("prediction"), h4("as expected height in cm for the child")
  ) )
)