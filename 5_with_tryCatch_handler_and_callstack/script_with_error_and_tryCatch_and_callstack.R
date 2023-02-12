tryCatch(
    {
      if (input$bins > 40) {
        stop("Too many bins!")
        # Note that the error is shown as warning in the console:
        #   Warning: Error in eval: Too many bins!
      }
      
      print(log(-1))  # just provoke a warning for demo purposes
    }
    , error = function(e) {
        # Let's try to print the stacktrace and error message
        # Note: The stacktrace of handled errors in R
        #       does NOT show the LOC that has thrown the error
        #       but the full tryCatch block (which does not help too much)
        stack.trace <- paste(as.character(limitedLabels(tail(sys.calls(), 100))), collapse = "\n")
        cat("Error occured: ", e$message, "\n")  # error message
        cat(stack.trace, "\n")
    }
)


