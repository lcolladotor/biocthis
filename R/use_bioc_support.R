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
#'
#' \dontrun{
#' ## Run this function in your package
#' use_bioc_support()
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
#' ## Create a template GitHub support file that is Bioconductor-friendly
#' biocthis::use_bioc_support()
use_bioc_support <- function() {
    usethis:::use_dot_github()
    use_template("bioc-support.md", fs::path(".github", "SUPPORT.md"),
        data = usethis:::project_data(), package = "biocthis"
    )
}
