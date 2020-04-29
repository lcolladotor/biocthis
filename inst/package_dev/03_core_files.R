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




