#' Create a Bioconductor-styled code of conduct
#'
#' This function is very similar to `usethis::use_tidy_cov()` except
#' that it uses a template from `biocthis`. This template links to the
#' Bioconductor Code of Conduct available at
#' <http://bioconductor.org/about/code-of-conduct/>. The function adds by
#' default the file `.github/CODE_OF_CONDUCT.md` with a brief overview of
#' the Bioconductor Code of Conduct and links to the latest version.
#'
#' @param path A `character(1)` specifying the location where the
#' `CODE_OF_CONDUCT.md` will be saved at in relation to the root of your
#' R package.
#'
#' @return This function adds and/or replaces the `.github/CODE_OF_CONDUCT.md`
#' file in your R package.
#' @export
#' @import usethis
#' @importFrom fs path_join
#'
#' @examples
#' \dontrun{
#' ## Run this function in your package
#' use_bioc_coc()
#' }
#'
#' ## Create an example package for illustrative purposes.
#' ## Note: you do not need to run this for your own package!
#' pkgdir <- biocthis_example_pkg()
#'
#' ## Create a Bioconductor-styled CODE_OF_CONDUCT.md
#' biocthis::use_bioc_coc()
use_bioc_coc <- function(path = ".github") {
    if (path == ".github") usethis:::use_dot_github()
    if (!is.null(path)) {
        usethis::use_directory(path, ignore = usethis:::is_package())
    }
    save_as <- fs::path_join(c(path, "CODE_OF_CONDUCT.md"))

    new <- usethis::use_template(
        "CODE_OF_CONDUCT.md",
        save_as = save_as,
        ignore = usethis:::is_package() && is.null(path),
        package = "biocthis"
    )

    href <- "http://bioconductor.org/about/code-of-conduct/"

    usethis::ui_todo("Don't forget to describe the code of conduct in your README:")
    usethis::ui_code_block("
    ## Code of Conduct
    Please note that the {usethis:::project_name()} project is released with a \\
    [Contributor Code of Conduct]({href}). By contributing to this project, \\
    you agree to abide by its terms.")

    invisible(new)
}
