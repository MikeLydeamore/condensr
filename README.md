
<!-- README.md is generated from README.Rmd. Please edit that file -->

# condensr

<!-- badges: start -->

[![R-CMD-check](https://github.com/MikeLydeamore/condensr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/MikeLydeamore/condensr/actions/workflows/R-CMD-check.yaml)
[![codecov](https://codecov.io/gh/MikeLydeamore/condensr/branch/master/graph/badge.svg?token=A94AISR7LE)](https://app.codecov.io/gh/MikeLydeamore/condensr)
<!-- badges: end -->

`condensr` provides an easy to use, fast framework for generating
academic “group” websites. Often, consortiums of researchers are wanting
a web presence that groups staff to projects and publications, but
managing such a website can be an expensive endeavour.

Fundamentally, `condensr` is a bunch of [`quarto`](https://quarto.org/)
templates, combined with some convenience functions to generate markdown
automatically. Staff are linked to projects, and to publications, and
websites for each are generated automatically.

## Installation

You can install the development version of condensr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("MikeLydeamore/condensr")
```

## Example

To get started with `condensr`, simply run:

``` r
library(condensr)
create_website(dir = "site_dir", name = "site_name")
```

and a new website will be generated with the files you need.

The `about.qmd` page includes the high level information. Most of the
group information belongs in `index.Rmd` where the three structures
expected by `condensr` are built.

To build the website, simply run:

``` r
quarto::render("site_dir")
```

You can host the page just like you would any other `quarto` site:
GitHub Pages, Netlify, or any other HTML hosting site of your choosing.

## Websites using this package

- [SPECTRUM](https://www.spectrum.edu.au)
- [SPARK](https://www.spark.edu.au)

If you are using `condensr` please tell me - I’d love to hear about it.
