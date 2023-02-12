# options(shiny.fullstacktrace = TRUE)  # now you see all shiny-internal calls too!

if (input$bins > 40)
  stop("Too many bins!")
  # Note that the error is shown as warning in the console:
  #   Warning: Error in eval: Too many bins!

print(log(-1))  # just provoke a warning for demo purposes

