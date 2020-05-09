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
#' ## Here's an example with a temporary package
#'
#' ## Set the package name
#' pkgname <- "biocthisexample"
#'
#' ## Create the example package in a temporary location
#' withr::with_dir(tempdir(), {
#'     usethis::create_package(pkgname)
#' })
#'
#' ## Save the path to our temporary package for the rest of the examples
#' pkgdir <- file.path(tempdir(), pkgname)
#'
#' ## Setup up git
#' withr::with_dir(pkgdir, {
#'     usethis::use_git()
#' })
#'
#' ## Create a template DESCRIPTION file that is Bioconductor-friendly
#' withr::with_dir(pkgdir, {
#'     biocthis::use_bioc_description()
#' })
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
