
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

### Get matches

Here is a way to get matches

``` r
library(ussie)
spain <- uss_get_matches("spain")
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

We could add filtering params

``` r
uss_get_matches("england", season == 1966)
#> # A tibble: 2,028 × 8
#>    country tier  season date       home    visitor      goals_home goals_visitor
#>    <chr>   <fct>  <int> <date>     <chr>   <chr>             <int>         <int>
#>  1 England 1       1966 1966-08-27 Arsenal Aston Villa           1             0
#>  2 England 1       1966 1966-09-17 Arsenal Blackpool             1             1
#>  3 England 1       1966 1966-12-03 Arsenal Burnley               0             0
#>  4 England 1       1966 1967-02-04 Arsenal Chelsea               2             1
#>  5 England 1       1966 1967-04-25 Arsenal Everton               3             1
#>  6 England 1       1966 1966-11-19 Arsenal Fulham                1             0
#>  7 England 1       1966 1966-11-05 Arsenal Leeds United          0             1
#>  8 England 1       1966 1966-10-01 Arsenal Leicester C…          2             4
#>  9 England 1       1966 1967-03-28 Arsenal Liverpool             1             1
#> 10 England 1       1966 1967-01-14 Arsenal Manchester …          1             0
#> # … with 2,018 more rows
```
