library(readxl)
library(data.table)

Metadata <- read_excel("./data-raw/2021_GCP_ALL_for_AUS_short-header/Metadata/Metadata_2021_GCP_DataPack.xls")


Metadata_CED <-
  read_excel("./data-raw/data-packs/Metadata/2021Census_geog_desc_1st_release.xlsx",
             sheet = "2021_ASGS_Non-ABS_Structures") %>%
  filter(ASGS_Structure == "CED")
