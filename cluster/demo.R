#!/home/statsadmin/R/bin/Rscript

## Read process number
args <- commandArgs(trailingOnly = TRUE)
proc.no <- as.numeric(args[1])

print(paste("Executing process number", proc.no))

x <- rnorm(20)
save(x, file = sprintf("rnorm%02d.Rdata", proc.no))

Sys.sleep(30)

