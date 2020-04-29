## Create the package
## Preferably run this code using RStudio

usethis::create_package("YOUR_PACKAGE_NAME")
## This open a new window in RStudio

## Note: If you create packages frequently, check the help file for
## usethis::use_description for more information on how to set some R author
## defaults.

## Add package development files from biocthis
biocthis::use_bioc_pkg_templates()
