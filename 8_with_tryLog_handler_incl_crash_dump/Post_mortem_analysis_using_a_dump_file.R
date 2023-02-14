# How do I perform a post-mortem analysis of my crashed R script?

# https://github.com/aryoda/tryCatchLog#how-do-i-perform-a-post-mortem-analysis-of-my-crashed-r-script



load("dump.rda")
# load("dump_with_local_var_for_input.rda")

debugger(last.dump)
