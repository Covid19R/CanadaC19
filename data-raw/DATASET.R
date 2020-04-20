#---------------------------
# Code to update CanadaC19 Datasets
#---------------------------

setwd(here::here())
source("./R/refresh_CanadaC19.R")
soure("./R/utils.R")

CanadaC19_demo <- refresh_CanadaC19_cases()

#check it
head(CanadaC19_demo)

#deploy data
usethis::use_data(CanadaC19_demo, overwrite = TRUE)
