
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Travis build
status](https://travis-ci.com/debusklaneml/CanadaC19.svg?branch=master)](https://travis-ci.com/debusklaneml/CanadaC19)

## CanadaC19

The CanadaC19 package harvests the data made freely available by the
this [repository](https://github.com/ishaberry/Covid19Canada). This
package is currently a component to the [Covid19R
project](https://github.com/Covid19R).

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
