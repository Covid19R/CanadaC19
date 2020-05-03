#'----------------------------------------
#' Script to startup the a YOUR_PKG_NAME package
#' using usethis
#'----------------------------------------

library(usethis)

#create_tidy_package(glue::glue"{here::here()/../PKGNAME})

#setup package
use_code_of_conduct()
use_data_raw()
#use_LICENSE_FUNCTION()

#imports packages
use_package("magrittr")
use_package("tibble")

#suggests packages


#add other elements



#for release - checks!
devtools::check_win_release()
2
devtools::release_checks()
devtools::spell_check()
devtools::check_rhub()

#finally
devtools::release()

