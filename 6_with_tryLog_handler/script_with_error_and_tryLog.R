library(tryCatchLog)

# Keep the file name and line numbers of sourced files
options(keep.source = TRUE)

# stacktrace contains only code with known line numbers
options(tryCatchLog.include.full.call.stack = FALSE)

tryLog(
  {
    if (input$bins > 40) {
      stop("Too many bins!")
      # Note that the error is shown as warning in the console:
      #   Warning: Error in eval: Too many bins!
    }
    
    print(log(-1))  # just provoke a warning for demo purposes
  }
)