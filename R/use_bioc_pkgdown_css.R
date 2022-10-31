#' Create a css with Bioconductor colors for pkgdown
#'
#' This function creates the `pkgdown/extra.css` file with Bioconductor-style
#' colors that will make your `pkgdown` documentation websites much cooler ^_^.
#'
#' For more details on how this function came to be, check
#' <https://github.com/lcolladotor/biocthis/issues/34>.
#'
#' @return This function adds and/or replaces the `pkgdown/extra.css` file in
#' your R package.
#' @export
#' @import usethis
#' @importFrom fs path
#'
#' @examples
#' \dontrun{
#' ## Run this function in your package
#' use_bioc_support()
#' }
#'
#' ## Create an example package for illustrative purposes.
#' ## Note: you do not need to run this for your own package!
#' pkgdir <- biocthis_example_pkg()
#'
#' ## Create a css file to style your pkgdown website in Bioconductor colors
#' biocthis::use_bioc_pkgdown_css()
use_bioc_pkgdown_css <- function() {
    use_directory("pkgdown")
    use_template("bioc-pkgdown-extra.css", fs::path("pkgdown", "extra.css"),
        package = "biocthis"
    )
}
