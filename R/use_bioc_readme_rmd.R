#' Create a biocthis-style README.Rmd file
#'
#' This function is very similar to `usethis::use_readme_rmd()` except that it
#' uses a template from `biocthis`. This template README.Rmd includes
#' information on how to install your Bioconductor package, how to cite it,
#' and thanks the authors of several packages. It was built on top of the
#' original template from `usethis::use_readme_rmd()`.
#'
#' @param open Open the newly created file for editing? Happens in RStudio,
#' if applicable, or via `utils::file.edit()` otherwise. This argument has the
#' same behavior as the `open` argument used in `usethis` functions.
#'
#' @return This function adds and/or replaces the `README.Rmd` file in your
#' R package. It's useful to use `devtools::build_readme()` after running
#' this function or whenever you update the `README.Rmd` file.
#' @export
#' @importFrom rlang is_interactive
#' @import usethis
#'
#' @examples
#'
#' \dontrun{
#' ## Run this function in your package
#' use_bioc_readme_rmd()
#' }
#'
#' ## Create an example package for illustrative purposes.
#' ## Note: you do not need to run this for your own package!
#' pkgdir <- biocthis_example_pkg(use_git = TRUE)
#'
#' ## Create a template README.Rmd file that is Bioconductor-friendly
#' biocthis::use_bioc_readme_rmd()
use_bioc_readme_rmd <- function(open = rlang::is_interactive()) {
    usethis:::check_installed("rmarkdown")
    data <- usethis:::project_data()
    data$Rmd <- TRUE
    data$on_github <- usethis:::origin_is_on_github()
    new <- use_template("package-README", "README.Rmd", data = data, open = open, package = "biocthis", ignore = usethis:::is_package())
    if (!new) {
        return(invisible(FALSE))
    }
    if (usethis:::uses_git()) {
        use_git_hook("pre-commit", usethis:::render_template("readme-rmd-pre-commit.sh"))
    }
    invisible(TRUE)
}
