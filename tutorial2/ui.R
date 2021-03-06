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
  
  titlePanel("censusVis"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with 
               information from the 2010 US Census."),
      
      selectInput("variableHook", #this is the name of the variable to retrieve in the server code
                  label = "Choose a variable to display",
                  choices = c("Percent White", 
                              "Percent Black",
                              "Percent Hispanic", 
                              "Percent Asian"),
                  selected = "Percent White"),
      
      sliderInput("rangeHoock", #We are using the name Hook just because this is a tutorial  
                  label = "Range of interest:",
                  min = 0, max = 100, value = c(0, 100))
    ),
    
    mainPanel(
      textOutput("selected_varHook"), #any output element takes as a first argument the name of the hook
      textOutput("selected_rangeHook"),
      #maybe it is better to put all in a single html and let's see how it goes XD
      htmlOutput("selected_all_HTML_Hook")
    )
  )
  
))
