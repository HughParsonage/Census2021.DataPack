library(foreach)
library(hutils)

for (Region in c("STE", "SED",
                 "SA1",
                 "SA2", "SA3", "SA4", "LGA", "CED",
                 # "SSC",
                 "POA")) {
  in_for_loop <- TRUE
  table_killer <- NULL; cat("\n-------", Region, "-------\n");
  invisible(source(knitr::purl("data-raw/put-data.Rmd", output = tempfile(), quiet = TRUE)))
}
if (FALSE) {
source("data-raw/put-SA16_decoder.R")


for (Region in c("STE", "SED",
                 # "SA1",
                 "SA2", "SA3", "SA4", "LGA", "CED",
                 # "SSC",
                 "POA")) {
  shell('git config --global user.email "hugh.parsonage@gmail.com"')
  shell('git config --global user.name "HughParsonage"')
  shell(paste0("git add ./tsv/", Region, "*tsv"))
  shell(paste0("git commit -m ", '"Add ', Region, '"'))
  shell("git push")
}
}
