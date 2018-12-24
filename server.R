#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
modFit <- function(pred) lm(paste("mpg ~ ", paste(pred, collapse = "+"), sep =""), data = mtcars)
# Define server logic required to fit input predictors to a model
shinyServer(
  function(input, output) {
   
  output$fitResult <- renderPrint({
    
    summary(modFit(input$predictors))
          
  })
          
  output$doc <- renderPrint({
        
print('This app allows users to choose predictors to fit a model to predict gas mileage. Based on a multivariate linear model, the output provides users on with information on how well the chosen predictors can create a model, and each of the individual predictors relationship with mpg. Choose as many predictors on the left panel as you would like and hit the submit button. The output will show the p-value of the model, slopes and p-value of each of the predictors, as well as the formula among other things.')

  })          
    
  
  }
)


    

    
    
    
    
        

    
