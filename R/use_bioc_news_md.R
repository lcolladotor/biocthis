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
#' ## Set the package name on a temporary directory
#' pkgdir <- file.path(tempdir(), "biocthisexample")
#'
#' ## Create the example package in a temporary location
#' usethis::create_package(pkgdir)
#'
#' ## Set the project to use for the examples
#' usethis::proj_set(pkgdir)
#'
#' ## Create a template NEWS.md file that is Bioconductor-friendly
#' biocthis::use_bioc_news_md()
use_bioc_news_md <- function(open = rlang::is_interactive()) {
    use_template("NEWS.md", data = usethis:::package_data(), open = open, package = "biocthis")
}
