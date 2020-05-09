#' Create a biocthis-style NEWS.md file
#'
#' This function is very similar to `usethis::use_news_md()` except that it
#' uses a template from `biocthis`.
#'
#' Unlike the original function, `use_bioc_news_md()` does not make git commits.
#' So you won't lose work you didn't save when using this function.
#'
#' @inheritParams use_bioc_readme_rmd
#'
#' @return This function adds and/or replaces the `NEWS.md` file in your
#' R package.
#' @export
#' @importFrom rlang is_interactive
#' @import usethis
#'
#' @examples
#'
#' \dontrun{
#' ## Run this function in your package
#' use_bioc_news_md()
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
#' ## Create a template NEWS.md file that is Bioconductor-friendly
#' withr::with_dir(pkgdir, {
#'     biocthis::use_bioc_news_md()
#' })
use_bioc_news_md <- function(open = rlang::is_interactive()) {
    use_template("NEWS.md", data = usethis:::package_data(), open = open, package = "biocthis")
}
