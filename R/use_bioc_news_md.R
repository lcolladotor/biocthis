#' Create a biocthis-style news.md file
#'
#' This function is very similar to `usethis::use_news_md()` except that it
#' uses a template from `biocthis`.
#'
#' Unlike the original function, `use_bioc_news_md()` does not make git commits.
#' So you won't lose work you didn't save when using this function.
#'
#' @inheritParams use_bioc_readme_rmd
#'
#' @return
#' @export
#' @importFrom rlang is_interactive
#' @import usethis
#'
#' @examples
#'
#'  \dontrun{
#' use_bioc_news_md()
#' }
#'
use_bioc_news_md <- function(open = rlang::is_interactive()) {
    use_template("NEWS.md", data = usethis:::package_data(), open = open, package = 'biocthis')
}
