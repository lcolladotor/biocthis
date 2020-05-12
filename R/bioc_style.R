#' Tidyverse style made Bioconductor-friendly
#'
#' This function uses `styler::tidyverse_style()` and modifies it to make it
#' Bioconductor friendly. The full Bioconductor coding style is described at
#' <https://bioconductor.org/developers/how-to/coding-style/> and it shares
#' many properties with the Tidyverse coding style guide
#' <https://style.tidyverse.org/>. This function defines the `transformers` code
#' that you can then use with other `styler` functions such as
#' `styler::style_pkg()`.
#'
#' The `styler` package seems to be more actively maintained and better
#' performance than `formatR`, though that package can also be useful. This
#' function does not produce an exact Bioconductor coding style, but it gets
#' you close enough! =)
#'
#' For more details on how this function came to be, check
#' <https://github.com/r-lib/styler/issues/636>
#' <https://github.com/Bioconductor/BiocCheck/issues/57>
#' <https://github.com/Bioconductor/bioconductor.org/issues/54>
#'
#'
#' @param indent_by How many spaces of indention should be inserted after
#' operators such as `'('`. Unlike `styler::tidyverse_style()`, the default is
#' 4 to conform with the Bioconductor coding style.
#' @param ... Other arguments passed to `styler::tidyverse_style()`.
#'
#' @return A `list()` object with the information required by functions in
#' the `transformers` argument in the `styler` package functions such as
#' `styler::style_pkg()`.
#' @export
#' @importFrom styler tidyverse_style
#'
#' @examples
#'
#' \dontrun{
#' ## Run these functions in your package
#' styler::style_pkg(transformers = biocthis::bioc_style())
#' styler::style_dir(usethis::proj_path("dev"), transformers = biocthis::bioc_style())
#' }
#'
#' ## Create an example package for illustrative purposes.
#' ## Note: you do not need to run this for your own package!
#' pkgdir <- biocthis_example_pkg()
#'
#' ## Automatically style the example package
#' styler::style_pkg(pkgdir, transformers = biocthis::bioc_style())
bioc_style <- function(indent_by = 4, ...) {
    bioc_style <- styler::tidyverse_style(indent_by = indent_by, ...)
    bioc_style$indention$update_indention_ref_fun_dec <-
        function(pd_nested) {
            if (pd_nested$token[1] == "FUNCTION") {
                seq <- rlang::seq2(3, nrow(pd_nested) - 2)
                pd_nested$indention_ref_pos_id[seq] <-
                    pd_nested$pos_id[nrow(pd_nested)]
                pd_nested$indent[seq] <- pd_nested$indent[seq] + 4
            }
            pd_nested
        }
    return(bioc_style)
}
