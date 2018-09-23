library(shiny)
library(extrafont)

# Define UI for dataset viewer app ----
ui <- basicPage(
  
  verbatimTextOutput("fontlist")
)

# Define server logic to summarize and view selected dataset ----
server <- function(input, output) {
  
  #font_import(paths=c("./"),prompt=F)   ## because we downloaded to working directory
  #loadfonts()
  
  
  flist<-paste(fonts(),collapse = "\n")
  #flist<-paste(fonts(),sep="\n")
  output$fontlist <- renderText({ flist })
  
}

# Create Shiny app ----
shinyApp(ui = ui, server = server)