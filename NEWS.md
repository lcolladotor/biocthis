# biocthis 0.99.0

NEW FEATURES

* Added a `NEWS.md` file to track changes to the package.
* Added `bioc_style()` which provides a partial Bioconductor coding style
compatible with `styler`.
* Added `usethis`-style functions `use_bioc_citation()`,
`use_bioc_description()`, `use_bioc_github_action()`,
`use_bioc_issue_template()`, `use_bioc_news_md()`, `use_bioc_pkg_templates()`,
`use_bioc_readme_rmd()`, `use_bioc_support()` and `use_bioc_vignette()`. These
functions provide Bioconductor-friendly alternatives to several functions
in the `usethis` package.
* `use_bioc_github_action()` allows you to use a Bioconductor-friendly
GitHub Actions workflow for checking your Bioconductor package (or one that
depends on Bioconductor packages). Check the vignettes for details on its
features as well as the developer notes.
