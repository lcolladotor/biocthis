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
#' ## Setup up git
#' withr::with_dir(pkgdir, {
#'     usethis::use_git()
#' })
#'
#' ## Create a template README.Rmd file that is Bioconductor-friendly
#' withr::with_dir(pkgdir, {
#'     biocthis::use_bioc_readme_rmd()
#' })
use_bioc_readme_rmd <- function(open = rlang::is_interactive()) {
    usethis:::check_installed("rmarkdown")
    data <- usethis:::project_data()
    data$Rmd <- TRUE
    if (usethis:::uses_github()) {
        data$github <- list(owner = usethis:::github_owner(), repo = usethis:::github_repo())
    }
    new <- use_template("package-README", "README.Rmd", data = data, open = open, package = "biocthis")
    if (!new) {
        return(invisible(FALSE))
    }
    if (usethis:::uses_git()) {
        use_git_hook("pre-commit", usethis:::render_template("readme-rmd-pre-commit.sh"))
    }
    invisible(TRUE)
}
