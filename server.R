library(googlesheets4)

# server.R# link your Sheet's URL string here
googleSheet_embed_link <- "https://docs.google.com/spreadsheets/d/1AmwAPpR1gxRIKhvQNhiS7KeVU5dsPQZTjKCpjBPDubU/edit?usp=sharing"

shinyServer(function(input, output, session) {
  output$googleSheet <- renderUI({
    tags$iframe(id = "googleSheet",
                src = googleSheet_embed_link,
                width = 1024,
                height = 768,
                frameborder = 0,
                marginheight = 0)
  })
})

library(googledrive)
options(httr_oob_default=TRUE)
drive_auth()
drive_find()

gsheet <- read_sheet("https://docs.google.com/spreadsheets/d/1AmwAPpR1gxRIKhvQNhiS7KeVU5dsPQZTjKCpjBPDubU/edit?usp=sharing")
