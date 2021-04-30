#### ---- Shiny R package for Reprothon ---- ####
## Description: Shiny R package that will allow users to input data into a 
## spreadsheet during the Reprothon, and we can then download all of the results.
## Author: Rosie Baillie
# Started on: # Fri Apr 30 11:13:10 2021 ------------------------------
# Last updated: 

## -- Library -- ##
library(shiny)
library(DT)
library(googlesheets)

ui <- fluidPage(
  "Hello, world!"
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)


