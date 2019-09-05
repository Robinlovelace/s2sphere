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
#' coords1 = c(33, -122)
#' coords2 = c(33.1, -122.1)
get_covering = function(coords1, coords2) {

  r = s2s$RegionCoverer()
  p1 = s2s$LatLng$from_degrees(coords1[2], coords1[1])
  p2 = s2s$LatLng$from_degrees(coords2[2], coords2[1])

  s_sphere = s2s$LatLngRect$from_point_pair(p1, p2)
  cell_ids = r$get_covering(s2s$LatLngRect$from_point_pair(p1, p2))
  lat_lon_rect = s2s$LatLngRect()
  cell_ids = lat_lon_rect$from_point_pair(p1, p2)
  cell_ids

  p = s2s$LatLng$from_degrees(lat = ll[1], lng = ll[2])
  lat = p$lat()
  lat$from_degrees
  lon = p$()
  lon$degrees


}

# get_covering = function()
