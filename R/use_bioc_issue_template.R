#' Create a biocthis-style GitHub issue template
#'
#' This function is very similar to `usethis::use_tidy_issue_template()` except
#' that it uses a template from `biocthis`.
#'
#' For more details on how this function came to be, check
#' <https://github.com/r-lib/usethis/issues/1108>.
#'
#' @return This function adds and/or replaces the
#' `.github/ISSUE_TEMPLATE/issue_tempalte.md` file in your R package.
#' @export
#' @import usethis
#' @importFrom fs path
#'
#' @examples
#'
#' \dontrun{
#' ## Run this function in your package
#' use_bioc_issue_template()
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
#' ## Create a template GitHub issue file that is Bioconductor-friendly
#' biocthis::use_bioc_issue_template()
use_bioc_issue_template <- function() {
    usethis:::use_dot_github()
    use_directory(fs::path(".github", "ISSUE_TEMPLATE"))
    use_template("bioc-issue.md", fs::path(
        ".github", "ISSUE_TEMPLATE",
        "issue_template.md"
    ), package = "biocthis")
}
