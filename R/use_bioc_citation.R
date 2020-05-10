#' Create a biocthis-style CITATION template
#'
#' This function is very similar to `usethis::use_citation()` except
#' that it uses a template from `biocthis`. This template can help you get
#' started with a citation file for your Bioconductor package. You can
#' compare the template produced with the one from `usethis::use_citation()`
#' to pick and choose the parts you like best from each.
#'
#' @return This function adds and/or replaces the `inst/CITATION` file in your
#' R package.
#' @export
#' @import usethis
#' @importFrom fs path
#'
#' @examples
#'
#' \dontrun{
#' ## Run this function in your package
#' use_bioc_citation()
#' }
#'
#' ## Set the package name on a temporary directory
#' pkgdir <- file.path(tempdir(), "biocthisexample")
#'
#' ## Create the example package in a temporary location
#' usethis::create_package(pkgdir)
#'
#' ## Set the project to use for the examples
#' usethis::proj_set(pkgdir)
#'
#' ## Create a template CITATION file that is Bioconductor-friendly
#' biocthis::use_bioc_citation()
use_bioc_citation <- function() {
    use_directory("inst")
    data <- usethis:::project_data()
    if (usethis:::uses_github()) {
        data$Owner <- usethis:::github_owner()
    }
    use_template("package-CITATION", fs::path("inst", "CITATION"),
        data = data, open = TRUE, package = "biocthis"
    )
}
