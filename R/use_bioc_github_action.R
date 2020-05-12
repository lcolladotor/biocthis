#' Create a biocthis-style GitHub Actions workflow
#'
#' This function is very similar to `usethis::use_github_action()` except
#' that it uses a template from `biocthis`. It creates a Bioconductor-friendly
#' GitHub action workflow for your package. You can also use this GitHub
#' Actions workflow by executing
#' `usethis::use_github_action("check-bioc", "https://bit.ly/biocthis_gha", "check-bioc.yml")`
#' without having to install `biocthis`.
#'
#' For the full history on how this GitHub Actions workflow came to be, check
#' the "biocthis developer notes" vignette
#' <https://lcolladotor.github.io/biocthis/articles/biocthis_dev_notes.html>.
#'
#' @return This function adds and/or replaces the
#' `.github/workflows/check-bioc.yml` file in your R package.
#' @export
#' @import usethis
#'
#' @examples
#'
#' \dontrun{
#' ## Run this function in your package
#' biocthis::use_bioc_github_action()
#'
#' ## You can also use this GitHub Actions workflow without installing biocthis
#' ## by running:
#' usethis::use_github_action(
#'     "check-bioc", "https://bit.ly/biocthis_gha",
#'     "check-bioc.yml"
#' )
#' }
#'
#' ## Create an example package for illustrative purposes.
#' ## Note: you do not need to run this for your own package!
#' pkgdir <- biocthis_example_pkg()
#'
#' ## Create a GitHub Actions workflow that is Bioconductor-friendly
#' biocthis::use_bioc_github_action()
use_bioc_github_action <- function() {
    usethis::use_github_action(
        "check-bioc",
        url = paste0(
            "https://raw.githubusercontent.com/",
            "lcolladotor/biocthis/",
            "master/actions/check-bioc.yml"
        )
    )
}
