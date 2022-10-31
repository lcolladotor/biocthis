#' Add Bioconductor README badges
#'
#' These functions add markdown text to the `README` to include all or
#' individual badges from the Bioconductor landing page.
#'
#' @details
#' * `use_bioc_badges()`: adds all badges listed below, mimicking the
#' [Bioconductor landing
#' page](https://bioconductor.org/packages/release/bioc/html/biocthis.html)
#' * `use_bioc_build_badge()`: badge indicating [Bioconductor build
#' status](https://bioconductor.org/developers/) for either the `devel` or
#' `release` branch
#' * `use_bioc_support_badge()`: Bioc support site activity in the last 6 months
#' (answered posts / total posts)
#' * `use_bioc_rank_badge()`: ranking by number of downloads
#' * `use_bioc_history_badge()`: how long since the package was first in a
#' released Bioconductor version (or if it is in devel only)
#' * `use_bioc_last_commit_badge()`: time since last commit
#' * `use_bioc_dependencies_badge()`: number of recursive dependencies needed to
#' install the package
#'
#' @param which Which branch to report the build status for. Possible values:
#'   `"release"` (default) or `"devel"`.
#'
#' @seealso [usethis::use_badge()]
#'
#' @name bioc_badges
#' @examples
#' \dontrun{
#' ## Add all Bioc badges at once
#' use_bioc_badges()
#'
#' ## Add just the Bioc build status badge for devel
#' use_bioc_build_badge("devel")
#' }
#' @importFrom glue glue
#' @export
use_bioc_badges <- function() {
    use_bioc_build_badge(which = "release")
    use_bioc_build_badge(which = "devel")

    use_bioc_rank_badge()
    use_bioc_support_badge()
    use_bioc_history_badge()
    use_bioc_last_commit_badge()
    use_bioc_dependencies_badge()
}

#' @rdname bioc_badges
#' @export
use_bioc_build_badge <- function(which = c("release", "devel")) {
    which <- match.arg(which)

    usethis:::check_is_package("use_bioc_build_badge()")
    pkg <- usethis:::project_name()

    src <-
        glue("http://www.bioconductor.org/shields/build/{which}/bioc/{pkg}.svg")
    href <-
        glue("https://bioconductor.org/checkResults/{which}/bioc-LATEST/{pkg}")

    use_badge(glue("Bioc {which} status"), href, src)
}

#' @rdname bioc_badges
#' @export
use_bioc_support_badge <- function() {
    usethis:::check_is_package("use_bioc_support_badge()")
    pkg <- usethis:::project_name()

    src <- glue("https://bioconductor.org/shields/posts/{pkg}.svg")
    href <- glue("https://support.bioconductor.org/tag/{pkg}")

    use_badge("Bioc support", href, src)
}

#' @rdname bioc_badges
#' @export
use_bioc_rank_badge <- function() {
    usethis:::check_is_package("use_bioc_rank_badge()")
    pkg <- usethis:::project_name()

    src <-
        glue("https://bioconductor.org/shields/downloads/release/{pkg}.svg")
    href <-
        glue("http://bioconductor.org/packages/stats/bioc/{pkg}/")

    use_badge("Bioc downloads rank", href, src)
}

#' @rdname bioc_badges
#' @export
use_bioc_history_badge <- function() {
    usethis:::check_is_package("use_bioc_history_badge()")
    pkg <- usethis:::project_name()

    src <-
        glue("https://bioconductor.org/shields/years-in-bioc/{pkg}.svg")
    href <-
        glue("https://bioconductor.org/packages/release/bioc/html/{pkg}.html#since")

    use_badge("Bioc history", href, src)
}

#' @rdname bioc_badges
#' @export
use_bioc_last_commit_badge <- function() {
    usethis:::check_is_package("use_bioc_last_commit_badge()")
    pkg <- usethis:::project_name()

    src <-
        glue("https://bioconductor.org/shields/lastcommit/devel/bioc/{pkg}.svg")
    href <-
        glue("http://bioconductor.org/checkResults/devel/bioc-LATEST/{pkg}/")

    use_badge("Bioc last commit", href, src)
}

#' @rdname bioc_badges
#' @export
use_bioc_dependencies_badge <- function() {
    usethis:::check_is_package("use_bioc_dependencies_badge()")
    pkg <- usethis:::project_name()

    src <-
        glue("https://bioconductor.org/shields/dependencies/release/{pkg}.svg")
    href <-
        glue("https://bioconductor.org/packages/release/bioc/html/{pkg}.html#since")

    use_badge("Bioc dependencies", href, src)
}
