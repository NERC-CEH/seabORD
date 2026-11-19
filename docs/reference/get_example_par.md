# Load example biological and simulation parameters

Retrieves an example `Par` list containing the biological and simulation
parameters required to run a seabORD analysis.

## Usage

``` r
get_example_par(type = NULL)
```

## Arguments

- type:

  Character string specifying the example workflow to load. Available
  options are:

  - `NULL`: Standard scenario example.

  - `"dd"`: Density-dependence scenario example.

  - `"cal"`: Standard calibration example.

  - `"cal_dd"`: Density-dependence calibration example.

## Value

A named list containing example biological and simulation parameters for
use with
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

## Details

The returned `Par` object contains parameters such as colony sizes,
species, displacement and barrier probabilities, prey values, and
scaling settings.

See the package input vignette for a description of the input objects
required by
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md):
`vignette("C_KI_inputs", package = "seabORD")`.

## See also

[`get_example_modpar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_modpar.md),
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
[`get_example_modpar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_modpar.md),
[`get_example_ordPar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ordPar.md),
[`get_example_output()`](https://nerc-ceh.github.io/seabORD/reference/get_example_output.md),
[`get_example_seamask()`](https://nerc-ceh.github.io/seabORD/reference/get_example_seamask.md),
[`get_example_spadat1()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spadat1.md),
[`get_example_spadat2()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spadat2.md),
[`get_example_spdat()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spdat.md),
[`get_example_switches()`](https://nerc-ceh.github.io/seabORD/reference/get_example_switches.md)

## Examples

``` r
# Load parameters for the standard scenario example
par <- get_example_par()

# Load parameters for the density-dependence example
par_dd <- get_example_par("dd")

# Inspect the available parameters
names(par)
#>  [1] "thisSpecies"         "colonies"            "Nscalefactor"       
#>  [4] "Prob_Displacement"   "Prob_Barrier"        "PreyType"           
#>  [7] "collision"           "SiteSelectionMethod" "MaxDistancekm"      
#> [10] "PropInRange"         "Npairspercol"        "Pmedian"            
```
