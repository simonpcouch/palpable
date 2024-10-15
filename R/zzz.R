# nocov start

.onLoad <- function(libname, pkgname) {
  pal::directory_load(system.file("prompts", package = "palpable"))
}

# nocov end
