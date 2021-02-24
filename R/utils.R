get_github_spec <- function() {
    tryCatch(usethis:::target_repo_spec(ask = FALSE), error = function(e) NULL)
}
