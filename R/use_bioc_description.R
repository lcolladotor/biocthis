#' Create a biocthis-style DESCRIPTION template
#'
#' This function is very similar to `usethis::use_description()` except
#' that it uses a template from `biocthis`. This template includes some of the
#' information expected in the DESCRIPTION file of a Bioconductor package. You
#' can compare the output of this function to the one from
#' `usethis::use_description()` to select the parts you want from each.
#'
#' For details about the DESCRIPTION file guidelines for Bioconductor
#' packages check
#' <http://bioconductor.org/developers/package-guidelines/#description>.
#'
#' @return
#' @export
#' @import usethis
#' @importFrom here here
#'
#' @examples
#'
#' \dontrun{
#' use_bioc_description()
#' }
#'
use_bioc_description <- function(biocViews = "Software") {
    stopifnot(length(biocViews) == 1)
    pkg <- basename(here::here())

    desc_info <-
        usethis::use_description_defaults(
            basename(here::here()),
            fields = list(
                Version = "0.99.0",
                biocViews = biocViews,
                License = "Artistic-2.0",
                Date = Sys.Date(),
                URL = file.path("https://github.com/", usethis:::github_owner(), usethis:::github_repo()),
                BugReports = paste0("https://support.bioconductor.org/t/", pkg)
            )
        )
    usethis::use_description(desc_info)
}
