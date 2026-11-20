# Load example seabird-distribution raster data

Reconstructs and returns the seabird-distribution raster used by the
selected example workflow.

## Usage

``` r
get_example_brddata(type = NULL)
```

## Arguments

- type:

  Character string specifying the example workflow to load. Available
  options are:

  - `NULL`: Forth Islands standard example.

  - `"dd"`: Whinnyfold distance-decay example.

## Value

A raster::RasterLayer object containing example seabird-distribution
data with the appropriate dimensions, extent, coordinate reference
system, and layer name.

## Details

The raster is reconstructed from data stored internally as separate
metadata and cell-value objects.

For the standard example, the returned layer is named `"Forth.Islands"`.
For the distance-decay example, it is named `"Whinnyfold"`.

The returned raster can be supplied as the `BrdData` argument to
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

See the package input vignette for an example:
[`vignette("C_seabord_inputs", package = "seabORD")`](https://nerc-ceh.github.io/seabORD/articles/C_seabord_inputs.md).

## See also

[`get_example_seamask()`](https://nerc-ceh.github.io/seabORD/reference/get_example_seamask.md),
[`get_example_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/get_example_frgcompdata.md),
[`get_example_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fltdist_base.md),
and
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

## Examples

``` r
# Load the standard example bird-density raster
BrdData <- get_example_brddata()

# Load the distance-decay example
BrdData_dd <- get_example_brddata("dd")

# Plot the raster
raster::plot(BrdData)

```
