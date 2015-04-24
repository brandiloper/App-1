library(shiny)
library(datasets) # load datasets package

# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {
        
        # Return the requested dataset
        datasetInput <- reactive({
                switch(input$dataset,
                       "women" = women,
                       "warpbreaks" = warpbreaks,
                       "faithful" = faithful,
                        "cars" = cars)
                      
        })
        
        # Generate a summary of the dataset
        output$summary <- renderPrint({
                dataset <- datasetInput()
                summary(dataset)
        })
        
        # Show the first "n" observations
        output$view <- renderTable({
                head(datasetInput(), n = input$obs)
        })

})