
<!-- README.md is generated from README.Rmd. Please edit that file -->

# biocthis

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![BioC
status](http://www.bioconductor.org/shields/build/release/bioc/biocthis.svg)](https://bioconductor.org/checkResults/release/bioc-LATEST/biocthis)
[![BioC dev
status](http://www.bioconductor.org/shields/build/devel/bioc/biocthis.svg)](https://bioconductor.org/checkResults/devel/bioc-LATEST/biocthis)
[![R build
status](https://github.com/lcolladotor/biocthis/workflows/R-CMD-check-bioc/badge.svg)](https://github.com/lcolladotor/biocthis/actions)
[![Codecov test
coverage](https://codecov.io/gh/lcolladotor/biocthis/branch/master/graph/badge.svg)](https://codecov.io/gh/lcolladotor/biocthis?branch=master)
[![Support site activity, last 6 months: tagged questions/avg. answers
per question/avg. comments per question/accepted answers, or 0 if no
tagged
posts.](http://www.bioconductor.org/shields/posts/biocthis.svg)](https://support.bioconductor.org/t/biocthis/)
[![GitHub
issues](https://img.shields.io/github/issues/lcolladotor/biocthis)](https://github.com/lcolladotor/biocthis/issues)
<!-- badges: end -->

*[biocthis](https://github.com/lcolladotor/biocthis)* is an R package
that expands *[usethis](https://CRAN.R-project.org/package=usethis)*
with Bioconductor-friendly templates. These templates will help you
quickly create an R package that either has Bioconductor dependencies or
that you are thinking of submitting to Bioconductor one day.
*[biocthis](https://github.com/lcolladotor/biocthis)* has functions that
can also enhance your current R packages that either are already
distributed by Bioconductor or have Bioconductor dependencies.
*[biocthis](https://github.com/lcolladotor/biocthis)* also includes a
Bioconductor-friendly [GitHub
Actions](https://github.com/features/actions) workflow for your R
package(s).

Note that *[biocthis](https://github.com/lcolladotor/biocthis)* is not a
Bioconductor-core package and as such it is not a Bioconductor official
package. It was made by and for Leonardo Collado-Torres so he could more
easily maintain and create Bioconductor packages as listed at
[lcolladotor.github.io/pkgs/](https://lcolladotor.github.io/pkgs/).
Hopefully *[biocthis](https://github.com/lcolladotor/biocthis)* will be
helpful for you too.

## Installation instructions

Get the latest stable `R` release from
[CRAN](http://cran.r-project.org/). Then install `biocthis` using from
[Bioconductor](http://bioconductor.org/) the following code:

``` r
if (!requireNamespace("BiocManager", quietly = TRUE)) {
    install.packages("BiocManager")
}

BiocManager::install("biocthis")
```

And the development version from [GitHub](https://github.com/) with:

``` r
BiocManager::install("lcolladotor/biocthis")
```

## Example

Here is how you can use
*[biocthis](https://github.com/lcolladotor/biocthis)* to create a new
Bioconductor-friendly R package (illustrated using a temporary
directory):

``` r
## Load biocthis
library("biocthis")

## Create an example package for illustrative purposes.
## Note: you do not need to run this for your own package!
pkgdir <- biocthis_example_pkg()
#> ✓ Creating '/var/folders/cx/n9s558kx6fb7jf5z_pgszgb80000gn/T/RtmpWZ2baP/biocthisexample/'
#> ✓ Setting active project to '/private/var/folders/cx/n9s558kx6fb7jf5z_pgszgb80000gn/T/RtmpWZ2baP/biocthisexample'
#> ✓ Creating 'R/'
#> ✓ Writing 'DESCRIPTION'
#> Package: biocthisexample
#> Title: What the Package Does (One Line, Title Case)
#> Version: 0.0.0.9000
#> Authors@R (parsed):
#>     * First Last <first.last@example.com> [aut, cre] (YOUR-ORCID-ID)
#> Description: What the package does (one paragraph).
#> License: `use_mit_license()`, `use_gpl3_license()` or friends to pick a
#>     license
#> Encoding: UTF-8
#> LazyData: true
#> Roxygen: list(markdown = TRUE)
#> RoxygenNote: 7.1.1
#> ✓ Writing 'NAMESPACE'
#> ✓ Setting active project to '<no active project>'
#> ✓ Setting active project to '/private/var/folders/cx/n9s558kx6fb7jf5z_pgszgb80000gn/T/RtmpWZ2baP/biocthisexample'

## Create the bioc templates
biocthis::use_bioc_pkg_templates()
#> ✓ Creating 'dev/'
#> ✓ Adding '^dev$' to '.Rbuildignore'
#> ✓ Writing 'dev/01_create_pkg.R'
#> ✓ Writing 'dev/02_git_github_setup.R'
#> ✓ Writing 'dev/03_core_files.R'
#> ✓ Writing 'dev/04_update.R'
```

The template `dev` scripts include comments and steps you can follow for
making your Bioconductor-friendly R package or updating a current
package. In particular, you might want to use a Bioconductor-friendly
GitHub Actions workflow. If this is your first time seeings this words,
we highly recommend that you watch [Jim Hester’s `rstudio::conf(2020)`
talk on this
subject](https://www.jimhester.com/talk/2020-rsc-github-actions/).

``` r
## Create a GitHub Actions workflow that is Bioconductor-friendly
biocthis::use_bioc_github_action()
#> ✓ Creating '.github/'
#> ✓ Adding '^\\.github$' to '.Rbuildignore'
#> ✓ Adding '*.html' to '.github/.gitignore'
#> ✓ Creating '.github/workflows/'
#> ✓ Writing '.github/workflows/check-bioc.yml'
```

``` r
## Alternatively, use the general GitHub Actions workflow maintained by
## r-lib/actions
usethis::use_github_action("check-standard")
#> ✓ Writing '.github/workflows/check-standard.yaml'
```

## Citation

Below is the citation output from using `citation('biocthis')` in R.
Please run this yourself to check for any updates on how to cite
**biocthis**.

``` r
print(citation("biocthis"), bibtex = TRUE)
#> 
#> Collado-Torres L (2020). _Automate package and project setup for
#> Bioconductor packages_. doi: 10.18129/B9.bioc.biocthis (URL:
#> https://doi.org/10.18129/B9.bioc.biocthis),
#> https://github.com/lcolladotor/biocthis - R package version 0.99.0,
#> <URL: http://www.bioconductor.org/packages/biocthis>.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {Automate package and project setup for Bioconductor packages},
#>     author = {Leonardo Collado-Torres},
#>     year = {2020},
#>     url = {http://www.bioconductor.org/packages/biocthis},
#>     note = {https://github.com/lcolladotor/biocthis - R package version 0.99.0},
#>     doi = {10.18129/B9.bioc.biocthis},
#>   }
#> 
#> Collado-Torres L (2020). "Automate package and project setup for
#> Bioconductor packages." _bioRxiv_. doi: 10.1101/TODO (URL:
#> https://doi.org/10.1101/TODO), <URL:
#> https://www.biorxiv.org/content/10.1101/TODO>.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Article{,
#>     title = {Automate package and project setup for Bioconductor packages},
#>     author = {Leonardo Collado-Torres},
#>     year = {2020},
#>     journal = {bioRxiv},
#>     doi = {10.1101/TODO},
#>     url = {https://www.biorxiv.org/content/10.1101/TODO},
#>   }
```

Please note that the `biocthis` was only made possible thanks to many
other R and bioinformatics software authors, which are cited either in
the vignettes and/or the paper(s) describing this package.

## Code of Conduct

Please note that the `biocthis` project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.

## Development tools

  - Continuous code testing is possible thanks to [GitHub
    actions](https://www.tidyverse.org/blog/2020/04/usethis-1-6-0/)
    through *[usethis](https://CRAN.R-project.org/package=usethis)*,
    *[remotes](https://CRAN.R-project.org/package=remotes)*,
    *[sysreqs](https://github.com/r-hub/sysreqs)* and
    *[rcmdcheck](https://CRAN.R-project.org/package=rcmdcheck)*
    customized to use [Bioconductor’s docker
    containers](https://www.bioconductor.org/help/docker/) and
    *[BiocCheck](https://bioconductor.org/packages/3.12/BiocCheck)*.
  - Code coverage assessment is possible thanks to
    [codecov](https://codecov.io/gh) and
    *[covr](https://CRAN.R-project.org/package=covr)*.
  - The [documentation website](http://.github.io/lcolladotor/biocthis)
    is automatically updated thanks to
    *[pkgdown](https://CRAN.R-project.org/package=pkgdown)*.
  - The code is styled automatically thanks to
    *[styler](https://CRAN.R-project.org/package=styler)*.
  - The documentation is formatted thanks to
    *[devtools](https://CRAN.R-project.org/package=devtools)* and
    *[roxygen2](https://CRAN.R-project.org/package=roxygen2)*.

For more details, check the `dev` directory.

This package was developed using
*[biocthis](https://github.com/lcolladotor/biocthis)*.
