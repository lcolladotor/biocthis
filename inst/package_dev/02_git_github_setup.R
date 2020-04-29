## Setup Git and GitHub

## Note that Bioconductor doesn't allow *.Rproj files
## So we have to ignore it before anything else
usethis::use_git_ignore("*.Rproj")
usethis::use_git()
usethis::use_github("LieberInstitute")
