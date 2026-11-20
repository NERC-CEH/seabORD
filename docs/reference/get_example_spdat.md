# Load example species parameters

Retrieves the species-specific energetics, demography, and prey
parameters used by the package's Kittiwake example.

## Usage

``` r
get_example_spdat()
```

## Value

A data frame containing the species-specific parameters for Kittiwake,
identified by species code `"KI"`.

## Details

This function calls `get_spdat("KI")` to retrieve the Kittiwake
parameters from the species-parameter data supplied with the package.

The returned object can be supplied as the `spdat` argument to
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

See the package input vignette for an example:
[`vignette("C_seabord_inputs", package = "seabORD")`](https://nerc-ceh.github.io/seabORD/articles/C_seabord_inputs.md).

## See also

[`get_spdat()`](https://nerc-ceh.github.io/seabORD/reference/get_spdat.md)
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
[`get_example_switches()`](https://nerc-ceh.github.io/seabORD/reference/get_example_switches.md)

## Examples

``` r
# Load the example Kittiwake species parameters
spdat <- get_example_spdat()

# Inspect the available parameters
names(spdat)
#>  [1] "Code"             "Species"          "BM_adult_mn"      "BM_adult_sd"     
#>  [5] "BM_adult_mortf"   "BM_adult_abdn"    "BM_chick_mn"      "BM_chick_sd"     
#>  [9] "BM_Chick_mortf"   "daylength"        "seasonlength"     "unattend_max_hrs"
#> [13] "adult_DEE_mn"     "adult_DEE_sd"     "chick_DER"        "IR_max"          
#> [17] "IR_half_a"        "IR_half_b"        "flight_msec"      "assim_eff"       
#> [21] "energy_prey"      "energy_nest"      "energy_flight"    "energy_searest"  
#> [25] "energy_forage"    "energy_warming"   "chick_mass_a"     "adult_mass_KG"   
#> [29] "beta"             "basesurv_poor"    "basesurv_modr"    "basesurv_good"   
#> [33] "massloss_poor"    "massloss_modr"    "massloss_good"    "chicksurv_poor"  
#> [37] "chicksurv_modr"   "chicksurv_good"  
```
