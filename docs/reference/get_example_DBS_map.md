# Load an example distance-by-sea raster

Reconstructs and returns an example distance-by-sea raster, either
without or with offshore renewable developments included.

## Usage

``` r
get_example_DBS_map(type = NULL)
```

## Arguments

- type:

  Character string specifying the distance-by-sea raster to load.
  Available options are:

  - `NULL`: Baseline distance-by-sea raster without offshore renewable
    developments.

  - `"ords"`: Distance-by-sea raster with offshore renewable
    developments included.

## Value

A raster::RasterLayer object containing example distance-by-sea values.

## Details

The raster is reconstructed from data stored internally as separate
metadata and cell-value objects.

When `type = NULL`, the returned layer is named `"DBS_map"`. When
`type = "ords"`, the returned layer is named `"DBS_withORDs"`.

The baseline and ORD-inclusive rasters can be used to inspect how
offshore renewable development footprints alter available movement
routes and flight distances.

See the package input vignette for related spatial inputs:
`vignette("C_KI_inputs", package = "seabORD")`.

## See also

[`get_example_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fltdist_base.md),
[`get_example_fgc_3035()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fgc_3035.md),
and
[`get_example_ORDpoly()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ORDpoly.md).

Other example data:
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
[`get_example_spdat()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spdat.md),
[`get_example_switches()`](https://nerc-ceh.github.io/seabORD/reference/get_example_switches.md)

## Examples

``` r
if (FALSE) { # \dontrun{
# Load the baseline distance-by-sea raster
DBS_map <- get_example_DBS_map()

# Load the distance-by-sea raster with ORDs
DBS_with_ORDs <- get_example_DBS_map("ords")

# Plot the baseline raster
raster::plot(DBS_map)
} # }
```
