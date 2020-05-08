#' Create a biocthis-style GitHub action workflow
#'
#' This function is very similar to `usethis::use_github_action()` except
#' that it uses a template from `biocthis`. It creates a Bioconductor-friendly
#' GitHub action workflow for your package.
#'
#' For the full history on how this GitHub actions workflow came to be, check
#' <https://github.com/r-lib/actions/issues/84>.
#'
#' @return This function adds and/or replaces the
#' `.github/workflows/check-bioc.yml` file in your R package.
#' @export
#' @import usethis
#'
#' @examples
#'
#' \dontrun{
#' biocthis::use_bioc_github_action()
#' }
#'
use_bioc_github_action <- function() {
    usethis::use_github_action(
        "check-bioc",
        url = paste0(
            "https://raw.githubusercontent.com/",
            "lcolladotor/biocthis/",
            "master/.github/",
            "workflows/check-bioc.yml"
        )
    )
}
