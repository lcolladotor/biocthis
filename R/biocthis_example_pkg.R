#' Create a temporary example package
#'
#' This function creates a temporary example package. It is used by the
#' functions in `biocthis` to illustrate the functionality of the package
#' without exposing users to internals of `usethis` that users do not need
#' to use under typical working conditions.
#'
#' This function creates a package under `tempdir()` with the `name` provided
#' and uses `usethis::proj_set()` for setting the project directory. Users
#' do not need to rely on `usethis::proj_set()` under typical scenarios. In
#' other words, if you are running R interactively, `usethis` will set the
#' directory for you.
#'
#' Check
#' <https://github.com/lcolladotor/biocthis/commit/dc387807623f0e945432d15f0d0f899de1b1dd9d#r39102094>
#' for more details that motivated this function.
#'
#' @param name A `character(1)` with the name of the example package.
#' @param use_git A `logical(1)` indicating whether to set up `git` through
#' `usethis::use_git()` on the temporary example package.
#'
#' @return A `character(1)` with the path to a temporary example package to use
#' in the examples of the `biocthis` functions.
#'
#' @export
#'
#' @examples
#'
#' ## Create an example temporary package for illustrative purposes
#' pkgdir <- biocthis_example_pkg()
biocthis_example_pkg <- function(name = "biocthisexample", use_git = FALSE) {
    ## Set the package name on a temporary directory
    pkgdir <- file.path(tempdir(), name)

    ## Create the example package in a temporary location
    usethis::create_package(pkgdir)

    ## Set the project to use for the examples
    usethis::proj_set(pkgdir)

    ## Set up git if needed
    if (use_git) {
        usethis::use_git()
    }
    return(pkgdir)
}
