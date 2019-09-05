# global reference to s2s (will be initialized in .onLoad)
s2s = NULL

.onLoad = function(libname, pkgname) {
  # use superassignment to update global reference to s2s
  s2s <<- reticulate::import("s2s", delay_load = TRUE)
}

install_s2s = function(method = "auto", conda = "auto") {
  reticulate::py_install("s2s", method = method, conda = conda)
}
