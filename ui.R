# Library 
library(googlesheets4)

# ui.R # simply render your embedded sheet 
ui <- fluidPage(
  titlePanel("Reprothon spreadsheet"),
  htmlOutput("googleSheet"))