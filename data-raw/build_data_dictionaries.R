library(usethis)
library(data.table)
library(dplyr)
library(stringr)

lapply(
  list.files("data-raw", pattern = ".csv", full.names = TRUE),
  \(x) {
    file <- fread(x) |>
      mutate_all(str_squish)
    name <- gsub(".csv", "", gsub("data-raw/", "", x))
    assign(name, file)
    data.table::setDF(file)
    do.call("use_data", list(as.name(name), overwrite = TRUE))
  }
)
