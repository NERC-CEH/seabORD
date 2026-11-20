# Load example model switches

Retrieves an example `switches` list containing settings that control
optional model behaviour, execution modes, and output generation in a
seabORD analysis.

## Usage

``` r
get_example_switches(type = NULL)
```

## Arguments

- type:

  Character string specifying the example workflow to load. Available
  options are:

  - `NULL`: Standard scenario example.

  - `"dd"`: distance-decay scenario example.

  - `"cal"`: Standard calibration example.

  - `"cal_dd"`: distance-decay calibration example.

## Value

A named list containing example model switches for use with
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

## Details

The returned object contains switches controlling features such as the
model mode, execution environment, output detail, file creation, and
debugging behaviour.

See the package input vignette for a description of the input objects
required by
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md):
`vignette("C_KI_inputs", package = "seabORD")`.

## See also

[`get_example_par()`](https://nerc-ceh.github.io/seabORD/reference/get_example_par.md),
[`get_example_modpar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_modpar.md),
[`get_example_ordPar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ordPar.md),
and
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

Other example data:
[`get_example_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/get_example_DBS_map.md),
[`get_example_ORDpoly()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ORDpoly.md),
[`get_example_fgc_3035()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fgc_3035.md),
[`get_example_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fltdist_base.md),
[`get_example_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/get_example_frgcompdata.md),
[`get_example_modpar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_modpar.md),
[`get_example_ordPar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ordPar.md),
[`get_example_output()`](https://nerc-ceh.github.io/seabORD/reference/get_example_output.md),
[`get_example_par()`](https://nerc-ceh.github.io/seabORD/reference/get_example_par.md),
[`get_example_seamask()`](https://nerc-ceh.github.io/seabORD/reference/get_example_seamask.md),
[`get_example_spadat1()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spadat1.md),
[`get_example_spadat2()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spadat2.md),
[`get_example_spdat()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spdat.md)

## Examples

``` r
# Load switches for the standard scenario example
switches <- get_example_switches()

# Load switches for the calibration example
switches_cal <- get_example_switches("cal")

# Inspect the available switches
names(switches)
#>  [1] "environment"       "modelmode"         "debugmode"        
#>  [4] "bycol"             "bysus"             "bych"             
#>  [7] "printdaily"        "printseason"       "printpair"        
#> [10] "printfinal"        "minout"            "silent"           
#> [13] "saverds"           "savebirdflightmap"
```
