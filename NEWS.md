# biocthis 1.10.3

BUG FIXES

* Fixed internal code on `use_bioc_news_md()`, `use_bioc_readme_rmd()`, and
`use_bioc_vignette()` after `usethis` changed some of their un-exported
functions that `biocthis` relies on.

# biocthis 1.10.2

BUG FIXES

* Ignore `remotes::system_requirements("ubuntu", "20.04")` for now since that
leads to a JSON error. See https://github.com/lcolladotor/biocthis/issues/41
but also https://github.com/LieberInstitute/spatialLIBD/commit/edc8b72505af097895dcbf35887df28da8122e3c.

# biocthis 1.10.1

BUG FIXES

* Resolved https://github.com/lcolladotor/biocthis/issues/40 reported by
@lmweber with help from @bschilder and @LiNk-NY noted at
https://github.com/neurogenomics/rworkflows/issues/58. Basically, there's
no longer a need to explicitly list the AnVIL repositories to benefit
from those gains.

# biocthis 1.9.2

BUG FIXES

* `use_bioc_github_action()` now properly works again when `docker = TRUE`.
Behind the scenes, this function now uses `docker/build-docker-action@v4`
instead of the deprecated `docker/build-docker-action@v1`. These updates were
tested at https://github.com/lcolladotor/ExampleBiocWorkshop2023.

# biocthis 1.7.0

NEW FEATURES

* `use_bioc_pkgdown_css()`: helps you style your `pkgdown` website with
Bioconductor colors. See https://github.com/lcolladotor/biocthis/issues/34 for
details.
* `use_bioc_badges()`: helps you list all the Bioconductor badges (for
software packages). See https://github.com/lcolladotor/biocthis/pull/35 for
details.
* `use_bioc_feature_request_template()`: creates a feature request template for
your GitHub repository. See https://github.com/lcolladotor/biocthis/pull/33 for
details. `use_bioc_issue_template()` and `use_bioc_support()` were also updated
to be more Bioconductor-centric.
* `use_tinytest()` adds support for `tinytest`. See 
https://github.com/lcolladotor/biocthis/pull/32 for details.

BUG FIXES

* Fixed `pkgdown` website creation. See 
https://github.com/lcolladotor/biocthis/issues/29 for details. This is also
tangentially related to https://github.com/lcolladotor/biocthis/issues/31.
* Fixed usage of `r-lib/actions`. We now use `v2`. See
https://github.com/lcolladotor/biocthis/issues/36, 
https://github.com/lcolladotor/biocthis/pull/37, and 
https://github.com/r-lib/actions/issues/639 for more.
* Thanks to everyone who contributed pull requests and GitHub issues!


# biocthis 1.3.8

SIGNIFICANT USER-VISIBLE CHANGES

* `use_bioc_github_action()` has been updated to match as much as possible
the changes in `r-lib/actions` up to the latest commit
https://github.com/r-lib/actions/commit/630f4c9d8b813f45d0327a2fc20eb264fd518450.

# biocthis 1.3.4

NEW FEATURES

* `use_bioc_github_action()` is now more robust in preventing `tcltk` errors
thanks to this pull request by Ben Laufer
https://github.com/lcolladotor/biocthis/pull/19.

# biocthis 1.3.2

NEW FEATURES

* `use_bioc_github_action()` now uses the AnVIL-powered package binaries, which
greatly speed up the dependency installation steps in the docker (Linux) GitHub
Actions builds. Details are available in Nitesh Turaga's BioC2021 slides
https://github.com/nturaga/bioc2021-bioconductor-binaries.

# biocthis 1.1.10

NEW FEATURES

* Added the function `use_bioc_coc()` as requested by Luke Zappia et al.

# biocthis 1.1.9

NEW FEATURES

* Now `use_bioc_github_action()` has a `docker` argument which controls whether
to build a docker image at the end of the GHA workflow (only on Linux) as
requested by Kévin Rue-Albrecht.

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
