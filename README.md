
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

The goal of `biocthis` is to …

## Installation instructions

Get the latest stable `R` release from
[CRAN](http://cran.r-project.org/). Then install `biocthis` using from
[Bioconductor](http://bioconductor.org/) the following code:

``` r
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("biocthis")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("lcolladotor/biocthis")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library("biocthis")
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!

## Citation

Below is the citation output from using `citation('biocthis')` in R.
Please run this yourself to check for any updates on how to cite
**biocthis**.

``` r
print(citation('biocthis'), bibtex = TRUE)
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

Please note that the derfinderPlot project is released with a
[Contributor Code of
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
    *[BiocCheck](https://bioconductor.org/packages/3.11/BiocCheck)*.
  - Code coverage assessment is possible thanks to
    [codecov](https://codecov.io/gh) and
    *[covr](https://CRAN.R-project.org/package=covr)*.
  - The [documentation website](http://.github.io/biocthis) is
    automatically updated thanks to
    *[pkgdown](https://CRAN.R-project.org/package=pkgdown)*.
  - The code is styled automatically thanks to
    *[styler](https://CRAN.R-project.org/package=styler)*.
  - The documentation is formatted thanks to
    *[devtools](https://CRAN.R-project.org/package=devtools)* and
    *[roxygen2](https://CRAN.R-project.org/package=roxygen2)*.

For more details, check the `dev` directory.

This package was developed using
*[biocthis](https://github.com/lcolladotor/biocthis)*.
