# Load example model-control parameters

Retrieves an example `modPar` list containing model-control,
replication, computing-environment, and output settings for a seabORD
analysis.

## Usage

``` r
get_example_modpar(type = NULL)
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

A named list containing example model-control parameters for use with
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

## Details

The returned `modPar` object contains settings such as the number of
simulation replicates, random-number seed, run reference, output
directory, and parallel-processing configuration.

See the package input vignette for a description of the input objects
required by
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md):
`vignette("C_KI_inputs", package = "seabORD")`.

## See also

[`get_example_par()`](https://nerc-ceh.github.io/seabORD/reference/get_example_par.md),
[`get_example_ordPar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ordPar.md),
[`get_example_switches()`](https://nerc-ceh.github.io/seabORD/reference/get_example_switches.md),
and
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

Other example data:
[`get_example_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/get_example_DBS_map.md),
[`get_example_ORDpoly()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ORDpoly.md),
[`get_example_fgc_3035()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fgc_3035.md),
[`get_example_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fltdist_base.md),
[`get_example_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/get_example_frgcompdata.md),
[`get_example_ordPar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ordPar.md),
[`get_example_output()`](https://nerc-ceh.github.io/seabORD/reference/get_example_output.md),
[`get_example_par()`](https://nerc-ceh.github.io/seabORD/reference/get_example_par.md),
[`get_example_seamask()`](https://nerc-ceh.github.io/seabORD/reference/get_example_seamask.md),
[`get_example_spadat1()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spadat1.md),
[`get_example_spadat2()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spadat2.md),
[`get_example_spdat()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spdat.md),
[`get_example_switches()`](https://nerc-ceh.github.io/seabORD/reference/get_example_switches.md)

## Examples

``` r
# Load model parameters for the standard scenario example
modPar <- get_example_modpar()

# Load model parameters for the calibration example
modPar_cal <- get_example_modpar("cal")

# Inspect the available settings
names(modPar)
#> [1] "Nparallel"   "initialseed" "reference"   "outputdir"   "Nreplicates"
```
