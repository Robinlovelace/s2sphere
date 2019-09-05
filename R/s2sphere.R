# code here

# global reference to scipy (will be initialized in .onLoad)
scipy <- NULL

.onLoad <- function(libname, pkgname) {
  # use superassignment to update global reference to s2s
  s2s <<- reticulate::import("s2sphere"
                             # , delay_load = TRUE
                             )
}
