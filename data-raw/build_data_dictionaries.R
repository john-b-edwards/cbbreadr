library(usethis)
library(data.table)

lapply(
  list.files("data-raw", pattern = ".csv", full.names = TRUE),
  \(x) {
    file <- fread(x)
    file[, (colnames(file)) := lapply(.SD, trimws), .SDcols = colnames(file)]
    name <- gsub(".csv", "", gsub("data-raw/", "", x))
    assign(name, file)
    setDF(file)
    do.call("use_data", list(as.name(name), overwrite = TRUE))
  }
)
