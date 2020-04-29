#' Create a biocthis-style README.Rmd file
#'
#' This function is very similar to `usethis::use_readme_rmd()` except that it
#' uses a template from `biocthis`.
#'
#' @param open Whether to open the resulting file.
#'
#' @return
#' @export
#' @importFrom rlang is_interactive
#' @import usethis
#'
#' @examples
#'
#'  \dontrun{
#' create_readme_rmd()
#' }
create_readme_rmd <- function(open = rlang::is_interactive()) {
    usethis:::check_installed("rmarkdown")
    data <- usethis:::project_data()
    data$Rmd <- TRUE
    if (usethis:::uses_github()) {
        data$github <- list(owner = usethis:::github_owner(), repo = usethis:::github_repo())
    }
    new <- use_template('package-README', 'README.Rmd', data = data, open = open, package = 'biocthis')
    if (!new)
        return(invisible(FALSE))
    if (usethis:::uses_git()) {
        use_git_hook("pre-commit", usethis:::render_template("readme-rmd-pre-commit.sh"))
    }
    invisible(TRUE)
}
