#' Create a biocthis-style GitHub support file
#'
#' This function is very similar to `usethis::use_tidy_support()` except that it
#' uses a template from `biocthis`.
#'
#' For more details on how this function came to be, check
#' <https://github.com/r-lib/usethis/issues/1108>.
#'
#' @return This function adds and/or replaces the `.github/SUPPORT.md` file in
#' your R package.
#' @export
#' @import usethis
#' @importFrom fs path
#'
#' @examples
#' \dontrun{
#' ## Run this function in your package
#' use_bioc_support()
#' }
#'
#' ## Create an example package for illustrative purposes.
#' ## Note: you do not need to run this for your own package!
#' pkgdir <- biocthis_example_pkg()
#'
#' ## Create a template GitHub support file that is Bioconductor-friendly
#' biocthis::use_bioc_support()
use_bioc_support <- function() {
    usethis:::use_dot_github()
    data <- list(
        Package = usethis:::project_name(),
        github_spec = get_github_spec()
    )
    use_template("bioc-support.md", fs::path(".github", "SUPPORT.md"),
        data = data, package = "biocthis"
    )
}
