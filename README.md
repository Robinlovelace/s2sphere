
<!-- README.md is generated from README.Rmd. Please edit that file -->

# s2sphere

<!-- badges: start -->

<!-- badges: end -->

The goal of s2sphere is to demo geographic operations in the s2
library

## Installation

``` r
remotes::install_github("robinlovelace/s2sphere")
```

<!-- You can install the released version of s2sphere from [CRAN](https://CRAN.R-project.org) with: -->

<!-- ``` r -->

<!-- install.packages("s2sphere") -->

<!-- ``` -->

## In python

Here’s how it works in Python

``` python
import s2sphere

r = s2sphere.RegionCoverer()
p = s2sphere.LatLng(33, -122)
p
#> LatLng: 1890.7607239317167,-6990.085100596043
p1 = s2sphere.LatLng.from_degrees(33, -122)
p2 = s2sphere.LatLng.from_degrees(33.1, -122.1)
cell_ids = r.get_covering(s2sphere.LatLngRect.from_point_pair(p1, p2))
print(cell_ids)
#> [CellId: 80f0694000000000, CellId: 80f06b4000000000, CellId: 80f06bc000000000, CellId: 80f06d0000000000, CellId: 80f06e4000000000, CellId: 80f06ec000000000, CellId: 80f0724000000000, CellId: 80f072c000000000]
```

## In R

Proof of concept to reproduce the above code using reticulate:

``` r
library(s2sphere)
getCellIDs(33, -122, 33.1, -122.1)
#> [[1]]
#> CellId: 80f0694000000000
#> 
#> [[2]]
#> CellId: 80f06b4000000000
#> 
#> [[3]]
#> CellId: 80f06bc000000000
#> 
#> [[4]]
#> CellId: 80f06d0000000000
#> 
#> [[5]]
#> CellId: 80f06e4000000000
#> 
#> [[6]]
#> CellId: 80f06ec000000000
#> 
#> [[7]]
#> CellId: 80f0724000000000
#> 
#> [[8]]
#> CellId: 80f072c000000000
```
