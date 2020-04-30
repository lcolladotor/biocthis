## Did you miss the previous step? The one about setting up the R package core
## files.
rstudioapi::navigateToFile(here::here("dev", "03_core_files.R"))

## ********************************************
## Update your package code before a git commit
## ********************************************

## Automatically re-style the code in your package to a Bioconductor-friendly
## format
## Note that you can pair this function with the RStudio "Reformat code"
## button on the magic wand drop down menu. The keyboard shortcut is
## macOS: shift + command + A
## Windows: shift + control + A
styler::style_pkg(transformers = biocthis::bioc_style())
styler::style_dir(here::here("dev"), transformers = biocthis::bioc_style())
styler::style_dir(
    here::here("vignettes"),
    transformers = biocthis::bioc_style(),
    filetype = "Rmd"
)

## Re-make the documentation files
devtools::document()

## You might also need to update the README.md by re-rendering the README.Rmd
## file.
devtools::build_readme()
