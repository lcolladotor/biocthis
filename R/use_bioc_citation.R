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
#' ## Create a template CITATION file that is Bioconductor-friendly
#' withr::with_dir(pkgdir, {
#'     biocthis::use_bioc_citation()
#' })
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
