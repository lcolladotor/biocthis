#' Create a biocthis-style GitHub issue feature request template
#'
#' This function is very similar to `usethis::use_tidy_issue_template()` except
#' that it uses a template from `biocthis` and is tailored for feature requests.
#'
#' For more details on how this function came to be, check
#' <https://github.com/lcolladotor/biocthis/pull/33>.
#'
#' @return This function adds and/or replaces the
#' `.github/ISSUE_TEMPLATE/feature_request_template.md` file in your R package.
#' @export
#' @import usethis
#' @importFrom fs path
#'
#' @examples
#' \dontrun{
#' ## Run this function in your package
#' use_bioc_feature_request_template()
#' }
#'
#' ## Create an example package for illustrative purposes.
#' ## Note: you do not need to run this for your own package!
#' pkgdir <- biocthis_example_pkg()
#'
#' ## Create a feature request template GitHub issue file that is Bioconductor-friendly
#' biocthis::use_bioc_feature_request_template()
use_bioc_feature_request_template <- function() {
    usethis:::use_dot_github()
    use_directory(fs::path(".github", "ISSUE_TEMPLATE"))
    data <- list(
        Package = usethis:::project_name()
    )
    use_template("bioc-feature-request.md", fs::path(
        ".github", "ISSUE_TEMPLATE",
        "feature_request_template.md"
    ), package = "biocthis", data = data)
}
