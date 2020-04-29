## Setup Git and GitHub

## Note that Bioconductor doesn't allow *.Rproj files
## So we have to ignore it before anything else
usethis::use_git_ignore("*.Rproj")
usethis::use_git() ## Choose the option to make the commit, then to restart RStudio

## After the restart, continue by connecting your local git repository to
## GitHub. You might want to use the `organisation` and `private` arguments
args(usethis::use_github)
usethis::use_github()
## Follow any prompts, such as running: git push --set-upstream origin master
