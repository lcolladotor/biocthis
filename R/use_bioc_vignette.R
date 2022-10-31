#' Create a biocthis-style vignette template
#'
#' This function is very similar to `usethis::use_vignette()` except
#' that it uses a template from `biocthis`. This template includes
#' instructions for citing other packages using `RefManageR`, uses
#' `sessioninfo::session_info()` for displaying the R session information since
#' it includes GitHub installation information and other useful details. The
#' template also includes a section on how to ask for help and required
#' knowledge.
#'
#' @param name Just like in `usethis::use_vignette()`: base for file name to
#' use for new vignette. Should consist only of numbers, letters, _ and -.
#' Lower case is recommended.
#' @param title Just like in `usethis::use_vignette()`: the title of the
#' vignette.
#'
#' @return This function adds and/or replaces the
#' `vignettes/<name>.Rmd` file in your R package.
#' @export
#' @import usethis
#'
#' @examples
#' \dontrun{
#' ## Run this function in your package
#' pkg <- basename(usethis::proj_get())
#' biocthis::use_bioc_vignette(pkg, paste("Introduction to", pkg))
#' }
#'
#' ## Create an example package for illustrative purposes.
#' ## Note: you do not need to run this for your own package!
#' pkgdir <- biocthis_example_pkg()
#'
#' ## Create a template vignette file that is Bioconductor-friendly
#' biocthis::use_bioc_vignette("biocthisexample", "Introduction to biocthisexample")
use_bioc_vignette <- function(name, title = name) {
    usethis:::check_vignette_name(name)
    use_package("knitr", "Suggests")
    use_package("BiocStyle", "Suggests")
    use_package("RefManageR", "Suggests")
    use_package("sessioninfo", "Suggests")
    use_package("testthat", "Suggests")
    usethis:::use_description_field("VignetteBuilder", "knitr", overwrite = TRUE)
    use_git_ignore("inst/doc")
    biocthis_vignette_template("vignette.Rmd", name, title)
    invisible()
}

#' @importFrom fs path
#' @importFrom rlang is_string
#' @importFrom glue glue

biocthis_vignette_template <- function(template, name, title) {
    stopifnot(rlang::is_string(name))
    stopifnot(rlang::is_string(title))
    use_directory("vignettes")
    use_git_ignore(c("*.html", "*.R"), directory = "vignettes")
    use_package("rmarkdown", "Suggests")
    path <- fs::path("vignettes", usethis:::asciify(name), ext = "Rmd")
    data <- list(
        Package = usethis:::project_name(),
        github_spec = get_github_spec(),
        vignette_title = title,
        braced_vignette_title = glue::glue("{{{title}}}"),
        vignette_name = name
    )
    use_template(template, save_as = path, data = data, open = TRUE, package = "biocthis")
    path
}
