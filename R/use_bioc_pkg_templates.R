#' Create a biocthis package template R scripts
#'
#' This function creates the `dev` directory and in it, it creates R script
#' files that you can follow to create your own Bioconductor-friendly R
#' package. These R scripts include all the commands you need to get started =)
#' The commands are designed to be run on the order given, though we also
#' encourage you to check the latest utility functions in the `usethis`
#' package.
#'
#' For more details on how this function came to be, check:
#' <https://github.com/r-lib/actions/issues/84>
#' <https://github.com/r-lib/styler/issues/636>
#' <https://github.com/Bioconductor/BiocCheck/issues/57>
#' <https://github.com/Bioconductor/bioconductor.org/issues/54>
#' <https://github.com/r-lib/usethis/issues/1108>
#' as well as the "biocthis developer notes" vignette
#' <https://lcolladotor.github.io/biocthis/articles/biocthis_dev_notes.html>.
#'
#' @inheritParams use_bioc_readme_rmd
#'
#' @return This function adds and/or replaces the `dev` files in your
#' R package. That is:
#' * `dev/01_create_pkg.R`
#' * `dev/02_git_github_setup.R`
#' * `dev/03_core_files.R`
#' * `dev/04_update.R`
#' @export
#' @import usethis
#' @importFrom fs path
#'
#' @examples
#' \dontrun{
#' ## Run this function in your package
#' use_bioc_pkg_templates()
#' }
#'
#' ## Create an example package for illustrative purposes.
#' ## Note: you do not need to run this for your own package!
#' pkgdir <- biocthis_example_pkg()
#'
#' ## Create the biocthis templates
#' biocthis::use_bioc_pkg_templates()
use_bioc_pkg_templates <- function(open = rlang::is_interactive()) {
    data <- list(
        Package = usethis:::project_name()
    )
    use_directory("dev")
    use_build_ignore(fs::path("dev"))
    use_template("01_create_pkg.R", fs::path("dev", "01_create_pkg.R"),
        data = data, package = "biocthis", open = open
    )
    use_template("02_git_github_setup.R", fs::path("dev", "02_git_github_setup.R"),
        data = data, package = "biocthis", open = open
    )
    use_template("03_core_files.R", fs::path("dev", "03_core_files.R"),
        data = data, package = "biocthis", open = open
    )
    use_template("04_update.R", fs::path("dev", "04_update.R"),
        data = data, package = "biocthis", open = open
    )
}
