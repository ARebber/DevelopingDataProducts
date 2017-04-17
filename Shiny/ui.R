#
# This is the user-interface definition of my Shiny web application on learning to multiply. You can
# run the application by clicking 'Run App' above.
#
#

library(shiny)

# Define UI for application that teaches to multiply
shinyUI(
  fluidPage(

      # Application title
      headerPanel("Learn to multiply"),

      # Sidebar with a slider input for number of bins 
      sidebarLayout(
           sidebarPanel(
              h3('Multiply 2 numbers between 1 and 100'),
              h4('Your numbers, please:'),
              numericInput('num1', 'Your first number:', 1, min = 1, max = 100, step = 1),
              numericInput('num2', 'Your second number:', 1, min = 1, max = 100, step = 1),
              h3('Guess if the result is even or odd?'),
              selectInput("choice", 'Make your choice from the list:', c("Even", "Odd"), multiple = FALSE),
              h3('Do you even know the result of the multiplication?'),
              numericInput('num3', 'Give your answer:', 1, min = 1, max = 10000, step = 1),
              submitButton('Submit')
           ),      

          
          # Show the results
          mainPanel(
              h3('Results of your multiplication'),
              h4('Your first number:'),
              verbatimTextOutput("inputValue1"),
              h4('multiplied by your second number:'),
              verbatimTextOutput("inputValue2"),
              h4('gives:'),
              verbatimTextOutput("prediction1"),
              h4('Your answer was:'),
              verbatimTextOutput('inputValue4'),
              h4('You guessed this number would be:'),
              verbatimTextOutput("inputValue3"),
              h4('In fact the number is:'),
              verbatimTextOutput("prediction2")
          )
      )
    )
)
