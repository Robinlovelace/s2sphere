# code here

# global reference to scipy (will be initialized in .onLoad)
scipy <- NULL

.onLoad <- function(libname, pkgname) {
  # use superassignment to update global reference to s2s
  s2s <<- reticulate::import("s2sphere"
                             # , delay_load = TRUE
                             )
}

#' @export
#' @examples
#' ll = c(33, -122)
LatLng = function(ll) {
  p = s2s$LatLng$from_degrees(lat = ll[1], lng = ll[2])
  class(p)
  methods(class = class(p))
  p$lat()
}

# get_covering = function()
