# Plot a bird-distribution raster

Creates a map of a seabORD bird-distribution raster and overlays
coastlines for geographical context.

## Usage

``` r
plot_brddata(brddata, title = "Coastline and bird distribution", zoom = FALSE)
```

## Arguments

- brddata:

  A raster::RasterLayer object containing the relative spatial
  distribution of birds, such as the object returned by
  [`get_example_brddata()`](https://nerc-ceh.github.io/seabORD/reference/get_example_brddata.md).

- title:

  Character string giving the plot title. Defaults to
  `"Coastline and bird distribution"`.

- zoom:

  Logical. If `TRUE`, zooms the map to the extent of `brddata` plus a 10
  km buffer. Defaults to `FALSE`.

## Value

A
[`ggplot2::ggplot()`](https://ggplot2.tidyverse.org/reference/ggplot.html)
object showing the bird-distribution raster and coastline.

## Details

`BrdData` represents the relative spatial distribution of birds across
the model domain. This distribution may be derived from GPS tracking
data or, where suitable tracking data are unavailable, estimated using a
distance-decay model.

Raster cells with a value of zero are converted to missing values before
plotting. Non-missing values are displayed using a continuous viridis
colour scale.

The coastline data supplied with the package are transformed to the
coordinate reference system of `brddata` before plotting.

## See also

[`get_example_brddata()`](https://nerc-ceh.github.io/seabORD/reference/get_example_brddata.md)
for loading example bird-distribution rasters and
[`plot_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/plot_frgcompdata.md)
for plotting the corresponding foraging-competition distribution.

Other plotting functions:
[`plot_BirdFlightMap()`](https://nerc-ceh.github.io/seabORD/reference/plot_BirdFlightMap.md),
[`plot_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DBS_map.md),
[`plot_DD_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DD_map.md),
[`plot_DD_map_with_ORDs()`](https://nerc-ceh.github.io/seabORD/reference/plot_DD_map_with_ORDs.md),
[`plot_ORD_obstruction()`](https://nerc-ceh.github.io/seabORD/reference/plot_ORD_obstruction.md),
[`plot_ORDpoly()`](https://nerc-ceh.github.io/seabORD/reference/plot_ORDpoly.md),
[`plot_adult_body_mass()`](https://nerc-ceh.github.io/seabORD/reference/plot_adult_body_mass.md),
[`plot_calibration_outputs()`](https://nerc-ceh.github.io/seabORD/reference/plot_calibration_outputs.md),
[`plot_chick_survival()`](https://nerc-ceh.github.io/seabORD/reference/plot_chick_survival.md),
[`plot_colony_location()`](https://nerc-ceh.github.io/seabORD/reference/plot_colony_location.md),
[`plot_flight_distance()`](https://nerc-ceh.github.io/seabORD/reference/plot_flight_distance.md),
[`plot_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/plot_fltdist_base.md),
[`plot_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/plot_frgcompdata.md),
[`plot_seamask()`](https://nerc-ceh.github.io/seabORD/reference/plot_seamask.md)

## Examples

``` r
# Load and plot the standard example bird distribution
brddata <- get_example_brddata()
plot_brddata(brddata)


# Load and plot the distance-decay example
brddata_dd <- get_example_brddata("dd")
plot_brddata(brddata_dd)

```
