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
#' ## Create a template GitHub issue file that is Bioconductor-friendly
#' withr::with_dir(pkgdir, {
#'     biocthis::use_bioc_issue_template()
#' })
use_bioc_issue_template <- function() {
    usethis:::use_dot_github()
    use_directory(fs::path(".github", "ISSUE_TEMPLATE"))
    use_template("bioc-issue.md", fs::path(
        ".github", "ISSUE_TEMPLATE",
        "issue_template.md"
    ), package = "biocthis")
}
