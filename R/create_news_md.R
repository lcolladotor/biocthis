#' Create a biocthis-style news.md file
#'
#' This function is very similar to `usethis::use_news_md()` except that it
#' uses a template from `biocthis`.
#'
#' Unlike the original function, `create_news_md()` does not make git commits.
#'
#' @inheritParams create_readme_rmd
#'
#' @return
#' @export
#' @importFrom rlang is_interactive
#' @import usethis
#'
#' @examples
#'
#'  \dontrun{
#' create_news_md()
#' }
#'
create_news_md <- function(open = rlang::is_interactive()) {
    use_template("NEWS.md", data = usethis:::package_data(), open = open, package = 'biocthis')
}
