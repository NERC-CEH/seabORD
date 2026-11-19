# Load example seabORD model output

Retrieves a precomputed seabORD model-output object for use in package
examples, vignettes, plotting functions, and testing workflows.

## Usage

``` r
get_example_output(type = NULL)
```

## Arguments

- type:

  Character string specifying the example output to load. Available
  options are:

  - `NULL`: Output from the standard scenario example.

  - `"cal"`: Output from the standard calibration example.

  - `"cal_dd"`: Output from the density-dependence calibration example.

## Value

A precomputed seabORD model-output object. Its contents depend on the
selected example and may include adult, chick, flight, survival, impact,
parameter, and spatial output components.

## Details

This function provides access to precomputed model outputs so that
examples and vignettes can demonstrate output processing and plotting
without rerunning the complete simulation.

The structure of the returned object corresponds to the output produced
by
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md),
although individual components depend on the model mode and output
switches used when the example was generated.

See the package output vignette for guidance on examining and plotting
seabORD results:
[`vignette("I_exampleKI_output", package = "seabORD")`](https://nerc-ceh.github.io/seabORD/articles/I_exampleKI_output.md).

## See also

[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md)
and
[`get_example_par()`](https://nerc-ceh.github.io/seabORD/reference/get_example_par.md).

Other example data:
[`get_example_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/get_example_DBS_map.md),
[`get_example_ORDpoly()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ORDpoly.md),
[`get_example_fgc_3035()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fgc_3035.md),
[`get_example_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fltdist_base.md),
[`get_example_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/get_example_frgcompdata.md),
[`get_example_modpar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_modpar.md),
[`get_example_ordPar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ordPar.md),
[`get_example_par()`](https://nerc-ceh.github.io/seabORD/reference/get_example_par.md),
[`get_example_seamask()`](https://nerc-ceh.github.io/seabORD/reference/get_example_seamask.md),
[`get_example_spadat1()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spadat1.md),
[`get_example_spadat2()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spadat2.md),
[`get_example_spdat()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spdat.md),
[`get_example_switches()`](https://nerc-ceh.github.io/seabORD/reference/get_example_switches.md)

## Examples

``` r
# Load the standard scenario output
output <- get_example_output()

# Load the standard calibration output
calibration_output <- get_example_output("cal")

# Load the density-dependence calibration output
calibration_output_dd <- get_example_output("cal_dd")

# Inspect the top-level output components
names(output)
#>  [1] "switches"      "Parameters"    "ordPar"        "modPar"       
#>  [5] "thisRun"       "output_f0"     "output_c0"     "output_a0"    
#>  [9] "output_y0"     "BirdFlightMap" "output_i0"     "output_i1"    
#> [13] "output_i2"     "output_i3"     "output_i4"     "output_i5"    
```
