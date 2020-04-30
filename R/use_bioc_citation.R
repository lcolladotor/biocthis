#' Create a biocthis-style CITATION template
#'
#' This function is very similar to `usethis::use_citation()` except
#' that it uses a template from `biocthis`. This template can help you get
#' started with a citation file for your Bioconductor package. You can
#' compare the template produced with the one from `usethis::use_citation()`
#' to pick and choose the parts you like best from each.
#'
#' @return
#' @export
#' @import usethis
#' @importFrom fs path
#'
#' @examples
#'
#' \dontrun{
#' use_bioc_citation()
#' }
#'
use_bioc_citation <- function() {
    use_directory("inst")
    data <- usethis:::project_data()
    if (usethis:::uses_github()) {
        data$Owner <- usethis:::github_owner()
    }
    use_template("CITATION", fs::path("inst", "CITATION"),
        data = data, open = TRUE, package = "biocthis"
    )
}
