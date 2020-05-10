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
#' @param biocViews A `character()` with the Bioconductor biocViews terms you
#' want to use for your package. See
#' <https://bioconductor.org/packages/release/BiocViews.html> for details. Note
#' that the terms you choose have to be part of one of the main four trees:
#' software, annotation, experiment or workflow.
#'
#' @return This function adds and/or replaces the `DESCRIPTION` file in your
#' R package.
#' @export
#' @import usethis
#' @importFrom here here
#'
#' @examples
#'
#' \dontrun{
#' ## Run this function in your package
#' use_bioc_description()
#' }
#'
#' ## Set the package name on a temporary directory
#' pkgdir <- file.path(tempdir(), "biocthisexample")
#'
#' ## Create the example package in a temporary location
#' usethis::create_package(pkgdir)
#'
#' ## Set a local project to work with for the examples
#' usethis::local_project(pkgdir)
#'
#' ## Setup up git
#' usethis::use_git()
#'
#' ## Create a template DESCRIPTION file that is Bioconductor-friendly
#' biocthis::use_bioc_description()
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
