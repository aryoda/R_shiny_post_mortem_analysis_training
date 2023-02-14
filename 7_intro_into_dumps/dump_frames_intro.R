library(tryCatchLog)

x.global <- 99



f <- function(x) {
  value <- x + 1
  ff(value)
}

ff <- function(y) {
  fff(y + 2)
}

fff <- function(z) {
  print(paste("z =", z))
  if(z > 4) stop("z is too big\n")
}



f(1)  # OK

tryLog(f(2), include.full.call.stack = FALSE, write.error.dump.file = TRUE)  # error



