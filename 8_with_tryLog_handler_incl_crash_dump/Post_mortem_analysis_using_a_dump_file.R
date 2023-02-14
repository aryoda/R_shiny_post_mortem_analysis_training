# How do I perform a post-mortem analysis of my crashed R script?

# https://github.com/aryoda/tryCatchLog#how-do-i-perform-a-post-mortem-analysis-of-my-crashed-r-script



load("dump.rda")

debugger(last.dump)
