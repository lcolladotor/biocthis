# biocthis 1.1.7

BUG FIXES

* Switch to match usethis 2.0.1 which changed a lot of the internal code in
`biocthis`.

# biocthis 1.1.4

NEW FEATURES

* Switched from `knitcitations` to `RefManageR` given the discussion at
<https://github.com/cboettig/knitcitations/issues/107>.

# biocthis 1.1.3

BUG FIXES

* Updated to use usethis version 2.0.0 or newer. Check the following
for more information on usethis changes:
<https://twitter.com/JennyBryan/status/1337858543404285952?s=20>.

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
