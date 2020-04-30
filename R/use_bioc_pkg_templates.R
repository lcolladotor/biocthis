#' Create a biocthis package template R scripts
#'
#' This function creates the `dev` directory and in it, it creates R script
#' files that you can follow to create your own Bioconductor-friendly R
#' package.
#'
#' @inheritParams use_bioc_readme_rmd
#'
#' @return
#' @export
#' @import usethis
#' @importFrom fs path
#'
#' @examples
#'
#'  \dontrun{
#' use_bioc_pkg_templates()
#' }
#'
use_bioc_pkg_templates <- function(open = rlang::is_interactive()) {
    data <- usethis:::project_data()
    use_directory("dev")
    use_build_ignore(fs::path("dev"))
    use_template("01_create_pkg.R", fs::path("dev", "01_create_pkg.R"),
        data = data, package = 'biocthis', open = open)
    use_template("02_git_github_setup.R", fs::path("dev", "02_git_github_setup.R"),
        data = data, package = 'biocthis', open = open)
    use_template("03_core_files.R", fs::path("dev", "03_core_files.R"),
        data = data, package = 'biocthis', open = open)
}
