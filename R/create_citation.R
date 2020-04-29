#' Create a biocthis-style CITATION template
#'
#' This function is very similar to `usethis::use_citation()` except
#' that it uses a template from `biocthis`.
#'
#' @return
#' @export
#' @import usethis
#' @importFrom fs path
#'
#' @examples
#'
#' \dontrun{
#' create_citation()
#' }
#'
create_citation <- function() {
    use_directory("inst")
    data <- usethis:::project_data()
    if (usethis:::uses_github()) {
        data$Owner <- usethis:::github_owner()
    }
    use_template("CITATION", fs::path("inst", "CITATION"),
        data = data, open = TRUE, package = "biocthis")
}
