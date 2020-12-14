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
#' ## Create an example package for illustrative purposes.
#' ## Note: you do not need to run this for your own package!
#' pkgdir <- biocthis_example_pkg()
#'
#' ## Create a template CITATION file that is Bioconductor-friendly
#' biocthis::use_bioc_citation()
use_bioc_citation <- function() {
    use_directory("inst")
    data <- usethis:::project_data()
    use_template("package-CITATION", fs::path("inst", "CITATION"),
        data = data, open = TRUE, package = "biocthis"
    )
}
