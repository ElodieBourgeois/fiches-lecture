print_apa7_from_doi <- function(doi = NULL) {
  if (is.null(doi) || !nzchar(trimws(doi))) {
    cat("DOI manquant dans les métadonnées.\n")
    return(invisible(NULL))
  }

  doi <- trimws(doi)

  if (!requireNamespace("rcrossref", quietly = TRUE)) {
    cat("Package R manquant: rcrossref (installer avec install.packages('rcrossref')).\n")
    return(invisible(NULL))
  }

  apa_ref <- tryCatch(
    rcrossref::cr_cn(doi, format = "text", style = "apa"),
    error = function(e) NULL
  )

  if (is.null(apa_ref) || length(apa_ref) == 0 || !nzchar(trimws(apa_ref[[1]]))) {
    cat(paste0("Référence APA indisponible automatiquement pour le DOI: ", doi, "\n"))
    return(invisible(NULL))
  }

  cat(trimws(apa_ref[[1]]), "\n")
  invisible(apa_ref[[1]])
}
