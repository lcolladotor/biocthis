#' Create a biocthis-style GitHub action workflow
#'
#' This function is very similar to `usethis::use_github_action()` except
#' that it uses a template from `biocthis`. It creates a Bioconductor-friendly
#' GitHub action workflow for your package.
#'
#' @return
#' @export
#' @import usethis
#'
#' @examples
#'
#'  \dontrun{
#' biocthis::use_bioc_github_action()
#' }
#'
use_bioc_github_action <- function() {
    usethis::use_github_action("check-bioc",
    url = "https://raw.githubusercontent.com/lcolladotor/biocthis/master/.github/workflows/check-bioc.yml"
)
}
