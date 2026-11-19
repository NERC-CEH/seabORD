# Installing seabORD

## Installing seabORD

This guide explains how to install **seabORD** directly from GitHub.
Before getting started, ensure that you have **R** and **RStudio**
installed and up to date.

### Prerequisites

To install packages from GitHub, you will need the **pak** package:

``` r

install.packages("pak")
```

### Installing seabORD

Install the latest development version from GitHub with:

``` r

pak::pkg_install("NERC-CEH/seabORD")
```

### Load the package

Once installation is complete, load the package in your R session:

``` r

library(seabORD)
```

### Updating seabORD

To update to the latest version, rerun:

``` r

remotes::install_github("NERC-CEH/seabORD")
```

### Next steps

Read [more about the seabORD
model](https://nerc-ceh.github.io/seabORD/articles/B_seabord_overview.html),
[read about its
inputs](https://nerc-ceh.github.io/seabORD/articles/C_seabord_inputs.html),
or [its main
functions](https://nerc-ceh.github.io/seabORD/articles/J_main_functions.html),
or start following the examples!
