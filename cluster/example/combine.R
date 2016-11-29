
datadir <- "rdata/"

all_x <- c()
for (f in list.files(datadir)) {
    load(file.path(datadir, f))
    all_x <- c(all_x, x)
}

save(all_x, file = "rnorm.Rdata")

