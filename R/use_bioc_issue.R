#' Create a biocthis-style GitHub issue template
#'
#' This function is very similar to `usethis::use_tidy_issue_tempalte()` except
#' that it uses a template from `biocthis`.
#'
#' @return
#' @export
#' @import usethis
#' @importFrom fs path
#'
#' @examples
#'
#'  \dontrun{
#' use_bioc_issue_template()
#' }
#'
use_bioc_issue_template <- function() {
    usethis:::use_dot_github()
    use_directory(fs::path(".github", "ISSUE_TEMPLATE"))
    use_template("bioc-issue.md", fs::path(".github", "ISSUE_TEMPLATE",
        "issue_template.md"), package = "biocthis")
}
