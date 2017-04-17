#
# This is the server logic of a Shiny web application on learning to multiply. You can run the 
# application by clicking 'Run App' above.
#

library(shiny)

# Define server logic for multiplication and decision even or odd

is.even <- function(x) x %% 2 == 0

shinyServer(function(input, output) {
  
  output$inputValue1 <- renderPrint({input$num1})
  output$inputValue2 <- renderPrint({input$num2})  
  output$prediction1 <- renderPrint(input$num1*input$num2)
  output$inputValue4 <- renderPrint({input$num3})
  output$inputValue3 <- renderPrint({input$choice})  
  output$prediction2 <- renderPrint({
      if (is.even(input$num1*input$num2)){
          print("Even")
      } else {
          print("Odd")
      }
  
   })
})
    
  
