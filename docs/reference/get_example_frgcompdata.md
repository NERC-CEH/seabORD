# Load example foraging-competition raster data

Reconstructs and returns the foraging-competition raster used by the
selected example workflow.

## Usage

``` r
get_example_frgcompdata(type = NULL)
```

## Arguments

- type:

  Character string specifying the example workflow to load. Available
  options are:

  - `NULL`: Forth Islands standard example.

  - `"dd"`: Whinnyfold distance-decay example.

## Value

A raster::RasterLayer object containing example foraging-competition
data with the appropriate dimensions, extent, coordinate reference
system, and layer name.

## Details

The raster represents the distribution of birds from colonies that are
not simulated directly but may compete with the modelled population at
foraging locations.

The raster is reconstructed from data stored internally as separate
metadata and cell-value objects.

For the standard example, the returned layer is named `"Forth.Islands"`.
For the distance-decay example, it is named `"Whinnyfold"`.

The returned raster can be supplied as the `FrgCompData` argument to
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

See the package input vignette for an example:
[`vignette("C_seabord_inputs", package = "seabORD")`](https://nerc-ceh.github.io/seabORD/articles/C_seabord_inputs.md).

## See also

[`get_example_brddata()`](https://nerc-ceh.github.io/seabORD/reference/get_example_brddata.md),
[`get_example_seamask()`](https://nerc-ceh.github.io/seabORD/reference/get_example_seamask.md),
[`get_example_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fltdist_base.md),
and
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

Other example data:
[`get_example_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/get_example_DBS_map.md),
[`get_example_ORDpoly()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ORDpoly.md),
[`get_example_fgc_3035()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fgc_3035.md),
[`get_example_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fltdist_base.md),
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
# Load the standard example competition raster
FrgCompData <- get_example_frgcompdata()

# Load the distance-decay example
FrgCompData_dd <- get_example_frgcompdata("dd")

# Plot the raster
raster::plot(FrgCompData)

```
