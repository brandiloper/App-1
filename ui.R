library(shiny)

# Define UI for dataset viewer application
shinyUI(pageWithSidebar(
        
        # Application title
        headerPanel("Dataset Viewer"),
        
        # Sidebar with controls to select a dataset and specify the number
        # of observations to view
        sidebarPanel(
                selectInput("dataset", "Choose a dataset:", 
                            choices = c("women", "warpbreaks", "faithful", "cars")),
                
                numericInput("obs", "Number of observations to view:", 10),
                
                submitButton("Update") # add submit button to change dataset
        ),
        # Show a summary of the dataset and an HTML table with the requested
        # number of observations. Here the h4 line text has been added with summary 
        # and  observations text input, respectively.
        mainPanel(
                h4("Summary"),
                verbatimTextOutput("summary"),
                
                h4("Observations"),
                tableOutput("view")
        )
))