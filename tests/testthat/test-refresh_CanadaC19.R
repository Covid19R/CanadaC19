refresh_col_names <-
  c(
    "case_id",
    "provincial_case_id",
    "date",
    "location",
    "location_type",
    "data_type",
    "travel_yn",
    "locally_acquired",
    "data_details",
    "data_url",
    "additional_info",
    "travel_history_country",
    "age",
    "sex"
  )

test_that("Check if columns still populate!", {
  
  res <- refresh_CanadaC19_cases()
  
  expect_named(res, refresh_col_names)

  expect_true(
    "Ontario" %in% unique(res$location)
  )  
})
