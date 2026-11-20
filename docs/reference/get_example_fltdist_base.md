# Load example baseline flight-distance raster data

Reconstructs and returns the baseline distance-by-sea raster used by the
selected example workflow.

## Usage

``` r
get_example_fltdist_base(type = NULL)
```

## Arguments

- type:

  Character string specifying the example workflow to load. Available
  options are:

  - `NULL`: Standard example for SPA site `"UK9004171"`.

  - `"dd"`: distance-decay example for SPA site `"UK9002491"`.

## Value

A raster::RasterLayer object containing baseline flight distances from
the selected SPA to the cells in the model domain.

## Details

The raster represents distance by sea from the example colony to each
reachable raster cell. These distances are used by seabORD to estimate
travel time and energetic costs associated with foraging trips.

The raster is reconstructed from data stored internally as separate
metadata and cell-value objects.

For the standard example, the returned layer is named `"UK9004171"`. For
the distance-decay example, it is named `"UK9002491"`.

The returned raster can be supplied as the `fltdist_base` argument to
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

See the package input vignette for an example:
`vignette("C_KI_inputs", package = "seabORD")`.

## See also

[`get_example_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/get_example_DBS_map.md),
[`get_example_fgc_3035()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fgc_3035.md),
[`get_example_seamask()`](https://nerc-ceh.github.io/seabORD/reference/get_example_seamask.md),
and
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

Other example data:
[`get_example_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/get_example_DBS_map.md),
[`get_example_ORDpoly()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ORDpoly.md),
[`get_example_fgc_3035()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fgc_3035.md),
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
# Load the standard example baseline flight-distance raster
fltdist_base <- get_example_fltdist_base()

# Load the distance-decay example
fltdist_base_dd <- get_example_fltdist_base("dd")

# Plot the raster
raster::plot(fltdist_base)

```
