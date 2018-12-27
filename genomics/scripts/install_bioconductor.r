#!/usr/bin/env r
if (is.null(argv) | length(argv)<1) {
  cat("Usage: installr_bioconductor.r pkg\n")
  q()
}

BiocManager::install(argv)