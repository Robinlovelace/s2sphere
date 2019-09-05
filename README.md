
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
p1 = s2sphere.LatLng.from_degrees(33, -122)
p2 = s2sphere.LatLng.from_degrees(33.1, -122.1)
cell_ids = r.get_covering(s2sphere.LatLngRect.from_point_pair(p1, p2))
print(cell_ids)
#> [CellId: 80f0694000000000, CellId: 80f06b4000000000, CellId: 80f06bc000000000, CellId: 80f06d0000000000, CellId: 80f06e4000000000, CellId: 80f06ec000000000, CellId: 80f0724000000000, CellId: 80f072c000000000]
p._LatLng__coords
#> (33, -122)
p1._LatLng__coords
#> (0.5759586531581288, -2.129301687433082)
p1.lat()
#> Angle: 0.5759586531581288
```

``` r
library(reticulate)
s2s = import("s2sphere")
latlng = s2s$LatLng(33, -122)
s2s
#> Module(s2sphere)
class(latlng)
#> [1] "s2sphere.sphere.LatLng" "python.builtin.object"
```

``` r
# library(s2sphere)
# ## basic example code
# p1 = s2s$convert
# os <- import("os")
```
