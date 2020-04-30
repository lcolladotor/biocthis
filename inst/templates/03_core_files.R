## Setup the core files for your package


## Edit your package DESCRIPTION file
## Check http://r-pkgs.had.co.nz/description.html for details
## as well as http://bioconductor.org/developers/package-guidelines/#description

## Check https://github.com/lcolladotor/biocthis/blob/master/DESCRIPTION
## for an example.
rstudioapi::navigateToFile(here::here("DESCRIPTION"))
## You'll at least want to edit the version to 0.99.0 (or lower) since that's
## the version number you will need to use with Bioconductor.

## You will also want to add the biocViews field, for example:
## biocViews: Software

## Many Bioconductor packages use the following license:
## license: Artistic-2.0

## You might want to add the Date field as well, which is used when creating
## the package citation information. Use the YYYY-MM-DD format. For example:
## Date: 2020-04-29


## Create your README.Rmd file
biocthis::create_readme_rmd()

## Edit accordingly. You might want to install your package also using
## devtools::build() or the RStudio keyboard shortcut:
## macoS: command + shift + B
## Windows: control + shift + B

## Click on the `knit` button on your README.Rmd file to create the README.md
## file.

## Add a NEWS.md file
## See http://bioconductor.org/developers/package-guidelines/#news for more
## details about Bioconductor news files.
biocthis::create_news_md()

## Add information for users and contributors
usethis::use_tidy_coc()
usethis::use_tidy_contributing()
biocthis::use_bioc_support()
biocthis::use_bioc_issue_template()
biocthis::create_citation()

## Add badges to the README.Rmd file
usethis::use_lifecycle_badge("Experimental")
usethis::use_bioc_badge()
usethis::use_github_actions_badge("R-CMD-check-bioc")

## Enable using tests
usethis::use_testthat()
usethis::use_test("example_test") ## You need at least one test to run covr
usethis::use_coverage()

## Re-knit your README.Rmd file to update your README.md file
## It's best to do so from RStudio, otherwise you create a README.html file
## that we don't need
# rmarkdown::render(here::here('README.Rmd'))

## Add a vignette template
pkg <- basename(here::here())
biocthis::create_vignette(pkg, paste("Introduction to", pkg))

## Add a Bioconductor-friendly GitHub actions workflow to check your package
biocthis::use_bioc_github_action()

