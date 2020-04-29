#' Create a biocthis-style GitHub support file
#'
#' This function is very similar to `usethis::use_tidy_support()` except that it
#' uses a template from `biocthis`.
#'
#' @return
#' @export
#' @import usethis
#' @importFrom fs path
#'
#' @examples
#'
#'  \dontrun{
#' use_bioc_support()
#' }
#'
use_bioc_support <- function() {
    usethis:::use_dot_github()
    use_template("bioc-support.md", fs::path(".github", "SUPPORT.md"),
        data = usethis:::project_data(), package = 'biocthis')
}
