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
