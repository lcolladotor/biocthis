#' Create a biocthis-style vignette template
#'
#' This function is very similar to `usethis::use_vignette()` except
#' that it uses a template from `biocthis`.
#'
#' @return
#' @export
#' @import usethis
#' @importFrom fs path
#' @importFrom rlang is_string
#' @importFrom glue glue
#'
#' @examples
#'
#'  \dontrun{
#' pkg <- basename(here::here())
#' biocthis::create_vignette(pkg, paste("Introduction to", pkg))
#' }
#'
create_vignette <- function(name, title = name) {
    usethis:::check_vignette_name(name)
    use_package("knitr", "Suggests")
    use_package("BiocStyle", "Suggests")
    use_package("knitcitations", "Suggests")
    use_package("sessioninfo", "Suggests")
    usethis:::use_description_field("VignetteBuilder", "knitr", overwrite = TRUE)
    use_git_ignore("inst/doc")
    biocthis_vignette_template("vignette.Rmd", name, title)
    invisible()
}

biocthis_vignette_template <- function(template, name, title) {
    stopifnot(rlang::is_string(name))
    stopifnot(rlang::is_string(title))
    use_directory("vignettes")
    use_git_ignore(c("*.html", "*.R"), directory = "vignettes")
    use_package("rmarkdown", "Suggests")
    path <- fs::path("vignettes", usethis:::asciify(name), ext = "Rmd")
    data <- usethis:::project_data()
    data$vignette_title <- title
    data$braced_vignette_title <- glue::glue("{{{title}}}")
    data$vignette_name <- name
    use_template(template, save_as = path, data = data, open = TRUE, package = "biocthis")
    path
}
