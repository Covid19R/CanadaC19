#' Get information about the datasets provided by YOURPACKAGENAME
#'
#' @description Returns information about the datasets in this package for covid19R harvesting
#'
#' @return a tibble of information about the datasets in this package
#' @export get_info_CanadaC19
#'
#' @examples
#' \dontrun{
#'
#' # get the dataset info from this package
#' get_info_YOURPACKAGENAME()
#' }
#'
get_info_CanadaC19 <- function() {
  latest_data <-
    refresh_CanadaC19_cases(verbose = FALSE)

  dplyr::tibble(
    data_set_name = "CanadaC19_cases",
    package_name = "CanadaC19",
    function_to_get_data = "refresh_CanadaC19_cases",
    data_details = "Open Source data from multiple public reporting data throughout Canada. For more, see https://github.com/ishaberry/Covid19Canada.",
    data_url = "https://raw.githubusercontent.com/ishaberry/Covid19Canada/master/cases.csv",
    license_url = "https://github.com/debusklaneml/CanadaC19/blob/master/LICENSE",
    data_type =
      latest_data %>%
        tidyr::drop_na(data_type) %>%
        dplyr::pull(data_type) %>%
        unique(),
    location_type =
      latest_data %>%
        tidyr::drop_na(location_type) %>%
        dplyr::pull(location_type) %>%
        unique(),
    spatial_extent = "state",
    has_geospatial_info = FALSE
  )
}
