# R Shiny post mortem analysis training

## What is `Shiny`?

Shiny is an R package that makes it easy to build interactive web apps
using the programming language [R](https://www.r-project.org/).

[`Shiny`](https://shiny.rstudio.com/) is a product of [posit](https://posit.co/)
(formerly known as `RStudio`)-


## What is "post-mortem analysis" and when to use it

"Post-mortem analysis" means

- to analyze an (R) memory dump
- stored in a file (via the package [tryCatchLog](https://github.com/aryoda/tryCatchLog))
- when an R app throws an error (or even "crashes"/stops running)
- in a new R session (= not debugging the running code!).

"Post-mortem anaylsis" ist most helpful for 

- sporadic (non-reproducible) bugs (since the memory dump contains the state when the error occured)
- Debugging is not possible (e.g. on a production remote machine)


## Purpose of this repo

This repo contains

- R example code and
- a presentation

to teach how to cope with errors in Shiny Apps, mainly:

- Logging
- Error-handling
- Post-mortem analysis (using [tryCatchLog](https://github.com/aryoda/tryCatchLog))


## TODOs

- Document limitations of post-mortem analysis due to different R version,
  missing packages (not installed), different OS...
- a lot more I guess (please open an issue to request adding or modifying something)...
