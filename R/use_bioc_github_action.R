.normalizeVersion <- function() {
    if (BiocManager:::isDevel())
        "devel"
    else
        paste0("RELEASE_", gsub("\\.", "_", BiocManager::version()))
}

.GHARversion <- function() {
    rver <- with(R.version, paste(major, minor, sep = "."))
    gsub("\\.", "-", rver)
}

#' Create a biocthis-style GitHub Actions workflow
#'
#' This function is very similar to `usethis::use_github_action()` except
#' that it uses a template from `biocthis`. It creates a Bioconductor-friendly
#' GitHub action workflow for your package. You can also use this GitHub
#' Actions workflow by executing `usethis::use_github_action()`.
#'
#' For the full history on how this GitHub Actions workflow came to be, check
#' the "biocthis developer notes" vignette
#' <https://lcolladotor.github.io/biocthis/articles/biocthis_dev_notes.html>.
#'
#' @return This function adds and/or replaces the
#' `.github/workflows/check-bioc.yml` file in your R package.
#'
#' @export
#'
#' @import usethis
#'
#' @examples
#'
#' \dontrun{
#'   ## Run this function in your package
#'   biocthis::use_bioc_github_action()
#' }
use_bioc_github_action <- function() {
    datalist <- list(
        version = .normalizeVersion(),
        rversion = .GHARversion()
    )
    template <- system.file(package = "biocthis", "templates",
        "check-bioc.yml", mustWork = TRUE)
    contents <- readLines(template)
    idx <- grep("[^$]\\{\\{", contents)
    parts <- grep("[^$]\\{\\{", contents, value = TRUE)
    pco <- whisker::whisker.render(parts, datalist)
    contents[idx] <- pco
    ## code taken from usethis
    usethis:::use_dot_github(ignore = TRUE)
    save_as <- fs::path(".github", "workflows", "check-bioc.yml")
    usethis:::create_directory(dirname(usethis:::proj_path(save_as)))
    new <- usethis:::write_over(usethis:::proj_path(save_as), contents)
    invisible(new)
}
