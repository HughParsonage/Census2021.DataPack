library(data.table)
library(magrittr)
library(readxl)

SA16_decoder <-
  read_excel("./data-raw/data-packs/Metadata/2021Census_geog_desc_1st_release.xlsx",
             sheet = 1) %>%
  as.data.table %>%
  .[ASGS_Structure != "SA1", .(ASGS_Structure, Census_Code_2021 = as.integer(Census_Code_2021), Census_Name_2021)] %>%
  fwrite("data-raw/SA21_decoder.csv")

devtools::use_data(SA16_decoder, overwrite = TRUE)
