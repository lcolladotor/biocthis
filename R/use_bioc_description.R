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
#' @param report_bioc A `logical(1)` indicating whether to set the `BugReports`
#' to the Bioconductor Support website <https://support.bioconductor.org/>
#' or to the GitHub package issues page.
#'
#' @return This function adds and/or replaces the `DESCRIPTION` file in your
#' R package.
#' @export
#' @import usethis
#'
#' @examples
#'
#' \dontrun{
#' ## Run this function in your package
#' use_bioc_description()
#' }
#'
#' ## Create an example package for illustrative purposes.
#' ## Note: you do not need to run this for your own package!
#' pkgdir <- biocthis_example_pkg(use_git = TRUE)
#'
#' ## Create a template DESCRIPTION file that is Bioconductor-friendly
#' biocthis::use_bioc_description()
use_bioc_description <- function(biocViews = "Software", report_bioc = TRUE) {
    stopifnot(length(biocViews) == 1)
    pkg <- usethis:::project_name()

    if (biocViews == "AnnotationHub") {
          import <- "AnnotationHubData"
      } else if (biocViews == "ExperimentHub") {
          import <- "ExperimentHubData, ExperimentHub"
      } else {
          import <- NULL
      }

    desc_info <-
        usethis::use_description_defaults(
            basename(usethis::proj_get()),
            fields = list(
                Version = "0.99.0",
                biocViews = biocViews,
                License = "Artistic-2.0",
                Date = Sys.Date(),
                Imports = import,
                URL = file.path(
                    "https://github.com",
                    usethis:::target_repo_spec()
                ),
                BugReports = if (report_bioc) {
                      paste0("https://support.bioconductor.org/t/", pkg)
                  } else {
                      file.path(
                          "https://github.com",
                          usethis:::target_repo_spec(),
                          "/issues/"
                      )
                  }
            )
        )
    usethis::use_description(desc_info)
}
