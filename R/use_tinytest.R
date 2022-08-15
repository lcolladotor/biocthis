uses_tinytest <- function() {
    paths <- proj_path(
        c(file.path("inst", "tinytest"), path("tests", "tinytest.R"))
    )
    any(file.exists(paths))
}

use_tinytest_impl <- function() {
    use_directory(file.path("inst", "tinytest"))
    use_directory("tests")
    use_template("tinytest.R", save_as = file.path("tests", "tinytest.R"),
        data = list(name = usethis:::project_name()), package = "biocthis")
}

#' Use the `tinytest` framework for unit tests
#'
#' This function works similarly to `usethis::use_testthat`. It sets up the
#' minimal files required to make `tinytest` compatible with the current
#' project.
#'
#' @return
#'   * use_tinytest: creates a `tinytest.R` file in the `tests` directory
#'   * use_tiny_test: creates a `test_<name>.R` file in the `inst/tinytest`
#'   directory where are to reside
#'
#' @export
use_tinytest <- function() {
    use_tinytest_impl()
}

#' @describeIn use_tinytest add a unit test file for testing functions in the
#'   current R file
#'
#' @inheritParams usethis::use_test
#'
#' @export
use_tiny_test <- function(name = NULL, open = interactive()) {
    if (!uses_tinytest())
        use_tinytest_impl()
    if (is.null(name))
        name <- usethis:::get_active_r_file(path = "R")
    else
        name <- paste0("test_", name)
    name <- paste0(name, ".R")
    path <- file.path("inst", "tinytest", name)
    edit_file(proj_path(path), open = open)
}
