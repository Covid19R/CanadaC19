#' Pipe operator
#'
#' See \code{magrittr::\link[magrittr:pipe]{\%>\%}} for details.
#'
#' @name %>%
#' @rdname pipe
#' @keywords internal
#' @export
#' @importFrom magrittr %>%
#' @usage lhs \%>\% rhs
NULL

url <- "https://raw.githubusercontent.com/ishaberry/Covid19Canada/master/cases.csv"

iso.location <- data.frame(
  location_code = c("CA-AB", "CA-BC", "CA-MB", "CA-NB", "CA-NL", "CA-NS", "CA-ON", "CA-PE", "CA-QC", "CA-SK", "CA-NT", "CA-NU", "CA-YT"),
  location_code_type = "ISO 3166-2",
  province = c("Alberta", "BC", "Monitoba", "New Brunswick", "NL", "Nova Scotia", "Ontario", "PEI", "Quebec", "Saskatchewan", "NWT", "Repatriated", "Yukon")
)

read_data <- function() {
  suppressWarnings(
    readr::read_csv(
      url,
      col_types =
        readr::cols(
          date_report = readr::col_date(format = "%d-%m-%Y"),
          report_week = readr::col_date(format = "%d-%m-%Y")
        )
    )
  )
}

clean_data <- function(tbl) {
  tbl %>%
    dplyr::mutate(
      location_type = "state",
      data_type = "cases_new",
      data_url = "https://github.com/ishaberry/Covid19Canada"
    ) %>%
    dplyr::select(
      case_id,
      provincial_case_id,
      date = date_report,
      location = province,
      location_type,
      data_type,
      travel_yn,
      locally_acquired,
      data_details = case_source,
      data_url,
      additional_info,
      travel_history_country,
      age,
      sex
    ) %>%
    dplyr::arrange(
      case_id
    ) %>%
    dplyr::left_join(., iso.location, by = c("location" = "province"))
}

