getCellIDs = function(lat1, lon1, lat2, lon2, min_level = 0, max_level = 30) {

  library(reticulate)

  s2sphere = import("s2sphere")

  p1 = s2sphere$LatLng$from_degrees(lat1, lon1) # $lat()$radians, $lon()$radians
  # p1$lat()$degrees; p1$lng()$degrees

  p2 = s2sphere$LatLng$from_degrees(lat2, lon2)

  r = s2sphere$RegionCoverer()
  r$min_level = min_level
  r$max_level = max_level
  cell_ids = r$get_covering(s2sphere$LatLngRect$from_point_pair(p1, p2))
  cell_ids
}

#' @examples
#' getCellIDs(-33, -121, -33.1, -121.1)
