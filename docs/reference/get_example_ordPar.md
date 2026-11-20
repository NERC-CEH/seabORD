# Load example offshore renewable development parameters

Retrieves an example `ordPar` list containing parameters describing the
offshore renewable development scenario used in a seabORD analysis.

## Usage

``` r
get_example_ordPar(type = NULL)
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

A named list containing example offshore renewable development
parameters for use with
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

## Details

The returned `ordPar` object contains settings describing the offshore
renewable developments included in the model, including footprint and
buffer-zone parameters where applicable.

See the package input vignette for a description of the input objects
required by
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md):
[`vignette("C_seabord_inputs", package = "seabORD")`](https://nerc-ceh.github.io/seabORD/articles/C_seabord_inputs.md).

## See also

[`get_example_par()`](https://nerc-ceh.github.io/seabORD/reference/get_example_par.md),
[`get_example_modpar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_modpar.md),
[`get_example_switches()`](https://nerc-ceh.github.io/seabORD/reference/get_example_switches.md),
[`get_example_ORDpoly()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ORDpoly.md),
and
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

Other example data:
[`get_example_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/get_example_DBS_map.md),
[`get_example_ORDpoly()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ORDpoly.md),
[`get_example_fgc_3035()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fgc_3035.md),
[`get_example_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fltdist_base.md),
[`get_example_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/get_example_frgcompdata.md),
[`get_example_modpar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_modpar.md),
[`get_example_output()`](https://nerc-ceh.github.io/seabORD/reference/get_example_output.md),
[`get_example_par()`](https://nerc-ceh.github.io/seabORD/reference/get_example_par.md),
[`get_example_seamask()`](https://nerc-ceh.github.io/seabORD/reference/get_example_seamask.md),
[`get_example_spadat1()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spadat1.md),
[`get_example_spadat2()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spadat2.md),
[`get_example_spdat()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spdat.md),
[`get_example_switches()`](https://nerc-ceh.github.io/seabORD/reference/get_example_switches.md)

## Examples

``` r
# Load ORD parameters for the standard scenario example
ordPar <- get_example_ordPar()

# Load ORD parameters for the distance-decay example
ordPar_dd <- get_example_ordPar("dd")

# Inspect the available parameters
names(ordPar)
#> [1] "include_ORDs"    "parnames"        "FootprintBorder" "BufferZone"     
```
