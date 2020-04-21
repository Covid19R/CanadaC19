
<!-- README.md is generated from README.Rmd. Please edit that file -->

## CanadaC19

### Tests

We have provided two example tests using `testthat` which provide bare
minimum checks in the directory `tests` and associated subdirectories.
Edit and use these to make sure whatever incoming data from your source
meets your expectations, particularly as you get this package ready to
push to the public. Run the tests using the Tests option in the Build
tab in RStudio.

### Files to edit and things to do for release to the public

  - Readme.Rmd: We have provided a skeleton of your readme within this
    file. Use it and fill it in as needed. Feel free to modify as you’d
    like.

  - News.md: Sub in your R project name for the first release

  - Make a [pkgdown](https://pkgdown.r-lib.org/) site\! This can be as
    simple as running `pkgdown::build_site()`, pushing the update, and
    making sure your repo settings are set to put up the website. Add
    the URL to your README and your github repo

### Making your package a part of the Covid19R Project

OK\! You’re there\! It works, and your build is more or less clean (at
least, only notes). Close your issue about developing a new package and…
[file a new issue to onboard this
package](https://github.com/Covid19R/covid19R/issues) with the
onboarding template\! We’ll take a look, test it out, and if it’s ready,
we’ll add it in\! Nice work\! (and if it’s not, we’ll help you fix it)

### Submitting to CRAN

  - Use RStudio to build check your package until there are no errors,
    warnings, or notes, even\! Run the suite of devtools checks provided
    in setupcode.R. If you pass everything, use devtools to submit (it’s
    in the setupcode), as it will ask you additional questions.

  - Make sure your cran-comments.md file is up to date with info from
    your final check\!

-----

# YOUR\_PACKAGE\_NAME

<!-- badges: start -->

[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-orange.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![CRAN
status](https://www.r-pkg.org/badges/version/YOUR_PACKAGE)](https://CRAN.R-project.org/package=YOUR_PACKAGE)
[![Travis build
status](https://travis-ci.org/Covid19R/YOUR_PACKAGE.svg?branch=master)](https://travis-ci.org/USER_OR_ORG/YOUR_PACKAGE)
<!-- badges: end -->

The YOUR\_PACKAGE package harvests the data made freely available by the
XXX. See USEFUL\_URL\_ABOUT\_DATA for more.

## Installation

ONLY INCLUDE IF SUBMITTED TO/ON CRAN You can install the released
version of covid19nytimes from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("YOUR_PACKAGE")
```

Or the latest development version from
[github](https://github.com/USER_OR_ORG/YOUR_PACKAGE)

``` r
devtools::install_github("USER_OR_ORG/YOUR_PACKAGE")
```

## Data

The package has the data from XXXXXX. The package comes with static data
that was downloaded at the time of the last package update.

``` r
library(YOUR_LIBRARY_NAME)

head(DATA) %>% knitr::kable()
```

## Getting the Most Up to Date Data

To get the most updated data, run the following functions

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

## Sample visualization
