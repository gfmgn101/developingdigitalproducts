#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Choosing Predictors to Model MPG"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
            h3('Choose predictors of vehicle MPG to see model results and hit Submit:'),
            checkboxGroupInput("predictors","Checkbox",selected = "wt", colnames(mtcars)[-1]),

        submitButton('Submit')
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
        tabsetPanel(type = "tabs",
                    tabPanel("Instructions", br(),textOutput("doc")),
                    tabPanel("Model",br(), verbatimTextOutput("fitResult")))
       
        
  )
)))
