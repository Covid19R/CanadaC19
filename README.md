
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

## Installation (once on CRAN)

``` r
install.packages("CanadaC19")
```

Get the latest development version from
[github](https://github.com/debusklaneml/CanadaC19)

``` r
devtools::install_github("debusklaneml/CanadaC19")
```

## Getting the Most Up to Date Data

To get the most updated data, run the following functions

``` r
new_data <- refresh_CanadaC19_cases()
```

## Columns

The data follows the [covid19R standard for tidy Covid-19
data](https://covid19r.github.io/documentation/data-format-standard.html).
