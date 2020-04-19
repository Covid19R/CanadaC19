#' Canadian COVID-19 Data
#'
#' @description Updates the Canadian COVID-19 cases.
#'
#' @details This package scrapes Canadian reported cases from a repository that collects publically available data on cases across Canada. 
#'
#' @source \href{https://github.com/ishaberry/Covid19Canada}{Covid19Canada}
#' @source \href{https://github.com/Covid19R/documentation}{covid19R documentation}
#'
#' @return A tibble object
#' * date - The date in YYYY-MM-DD form
#' * location - The name of the location as provided by the data source. XXXXX
#' * location_type - The type of location using the covid19R controlled vocabulary. SAY MORE ABOUT THIS
#' * location_code - A standardized location code using a national or international standard. ADD MORE
#' * location_code_type The type of standardized location code being used according to the covid19R controlled vocabulary. Here we use `XXXX`
#' * data_type - the type of data in that given row using the covid19R controlled vocabulary. Includes WHAT DATA TYPES ARE HERE?
#' * value - number of cases of each data type
#' @export refresh_CanadaC19
#'
#' @examples
#' \dontrun{
#' # update the data
#' YOURPACKAGENAME_dat <- refresh_YOURPACKAGENAME()
#' }
#'
refresh_CanadaC19_cases <- function(verbose = TRUE) {
  if (verbose) message(glue::glue("Downloading raw data from {url}."))

  read_data() %>%
    clean_data()
}

