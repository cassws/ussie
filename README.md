
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ussie

<!-- badges: start -->

[![R-CMD-check](https://github.com/zoews/ussie/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/zoews/ussie/actions/workflows/R-CMD-check.yaml)
[![test-coverage](https://github.com/zoews/ussie/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/zoews/ussie/actions/workflows/test-coverage.yaml)
<!-- badges: end -->

Here is a sample package created at the 2022 Tidy Tools Workshop in
Washington, DC! We will standardize and transform European football
(soccer) data to compare across messy datasets. This is a way to
practice using the package development tooling in R.

## Installation

You can install the development version of ussie from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("zoews/ussie")
```

## Example

Here is an example using Spain’s European Football data.

``` r
library(ussie)
spain <- uss_make_matches(engsoccerdata::spain, "Spain")
summary(spain)
#>    country          tier          season          date           
#>  Length:23915       1:23915   Min.   :1928   Min.   :1929-02-10  
#>  Class :character   2:    0   1st Qu.:1963   1st Qu.:1964-02-08  
#>  Mode  :character   3:    0   Median :1984   Median :1985-03-03  
#>                     4:    0   Mean   :1981   Mean   :1981-11-05  
#>                               3rd Qu.:2000   3rd Qu.:2000-11-18  
#>                               Max.   :2015   Max.   :2016-05-15  
#>      home             visitor            goals_home     goals_visitor  
#>  Length:23915       Length:23915       Min.   : 0.000   Min.   :0.000  
#>  Class :character   Class :character   1st Qu.: 1.000   1st Qu.:0.000  
#>  Mode  :character   Mode  :character   Median : 2.000   Median :1.000  
#>                                        Mean   : 1.833   Mean   :1.028  
#>                                        3rd Qu.: 3.000   3rd Qu.:2.000  
#>                                        Max.   :12.000   Max.   :8.000
```
