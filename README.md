
<!-- README.md is generated from README.Rmd. Please edit that file -->

## CanadaC19

<!-- badges: start -->

[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-orange.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![CRAN
status](https://www.r-pkg.org/badges/version/YOUR_PACKAGE)](https://CRAN.R-project.org/package=YOUR_PACKAGE)
[![Travis build
status](https://travis-ci.org/Covid19R/YOUR_PACKAGE.svg?branch=master)](https://travis-ci.org/USER_OR_ORG/YOUR_PACKAGE)
<!-- badges: end -->

The CanadaC19 package harvests the data made freely available by the
this [repository](https://github.com/ishaberry/Covid19Canada).

## Installation

ONLY INCLUDE IF SUBMITTED TO/ON CRAN You can install the released
version of covid19nytimes from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("CanadaC19")
```

## Getting the Most Up to Date Data

To get the most updated data, run the following functions

``` r
new_data <- refresh_CanadaC19_cases()
```

## Columns

The data follows the [covid19R standard for tidy Covid-19
data](https://covid19r.github.io/documentation/data-format-standard.html).
The data columns are as follows:

  - date - The date in YYYY-MM-DD form
  - location - The name of the location as provided by the data source.
    Nested locations are combined and separated by a `,`, and can be
    split by `tidyr::separate()`, if you wish.
  - location\_type - The type of location using the [Covid19R Controlled
    Vocabulary](https://covid19r.github.io/documentation/standardized-vocabulary.html).
    Nested locations are indicated by multiple location types being
    combined with a `_`
  - location\_code - A standardized location code using a national or
    international standard. MORE HERE
  - location\_code\_type The type of standardized location code being
    used according to the covid19R controlled vocabulary. Here we use
    `XXX`
  - data\_type - the type of data in that given row from the [Covid19R
    Controlled
    Vocabulary](https://covid19r.github.io/documentation/standardized-vocabulary.html).
    What is here?
  - value - number of cases of each data type
  - OTHER COLUMNS - WHAT THEY MEAN
