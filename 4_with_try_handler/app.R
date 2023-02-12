library(shiny)

# Keep the file name and line numbers of sourced files
options(keep.source = TRUE)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
    )
    
)



# Define server logic required to draw a histogram
server <- function(input, output) {

    library(futile.logger)
    
    flog.threshold(INFO) # FATAL) # ERROR) # WARN) # INFO)
    # You can write log output into a file instead of console...
    # The working directory for a Shiny app is the directory that app.R is in.
    # flog.appender(appender.file("my_app.log"))
    
    flog.info("Begin of server function...")
    
    # This would write to the console (and app.log on the server)
    # print("print: log this")
    # cat("cat: log this\n")
    
    output$distPlot <- renderPlot({
      
        flog.info("Begin of renderPlot reactive function... (bins=%i)", input$bins)
        # similar to: sprintf("bins=%i", input$bins)

        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white')
        
        source("script_with_error_and_try.R", local = TRUE)
        
        flog.info("End of renderPlot reactive function...")
    })

    flog.info("End of server function...")
    
}

# Run the application 
shinyApp(ui = ui, server = server)
