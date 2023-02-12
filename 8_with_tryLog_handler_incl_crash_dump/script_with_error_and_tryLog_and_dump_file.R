library(tryCatchLog)

# stacktrace contains only code with known line numbers
options(tryCatchLog.include.full.call.stack = FALSE)

# creates a dump file for each error
# (enable only to hunt bugs to avoid flooding your server disk ;-)
options("tryCatchLog.write.error.dump.file" = TRUE)

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
