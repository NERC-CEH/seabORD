# Plot a sea-mask raster

Creates a map of a sea-mask raster and overlays coastlines for
geographical context.

## Usage

``` r
plot_seamask(seamask, title = "Coastline and bird distribution")
```

## Arguments

- seamask:

  A raster::RasterLayer object containing sea-mask data, such as the
  object returned by
  [`get_example_seamask()`](https://nerc-ceh.github.io/seabORD/reference/get_example_seamask.md).

- title:

  Character string giving the plot title. Defaults to
  `"Coastline and sea mask"`.

## Value

A
[`ggplot2::ggplot()`](https://ggplot2.tidyverse.org/reference/ggplot.html)
object showing land, sea, and the coastline.

## Details

Cells containing missing values are classified as land, while cells
containing non-missing values are classified as sea.

The coastline data supplied with the package are transformed to the
coordinate reference system of `seamask` before plotting.

## See also

[`get_example_seamask()`](https://nerc-ceh.github.io/seabORD/reference/get_example_seamask.md)
for loading the example sea-mask raster.

Other plotting functions:
[`plot_BirdFlightMap()`](https://nerc-ceh.github.io/seabORD/reference/plot_BirdFlightMap.md),
[`plot_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DBS_map.md),
[`plot_DD_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DD_map.md),
[`plot_DD_map_with_ORDs()`](https://nerc-ceh.github.io/seabORD/reference/plot_DD_map_with_ORDs.md),
[`plot_ORD_obstruction()`](https://nerc-ceh.github.io/seabORD/reference/plot_ORD_obstruction.md),
[`plot_ORDpoly()`](https://nerc-ceh.github.io/seabORD/reference/plot_ORDpoly.md),
[`plot_adult_body_mass()`](https://nerc-ceh.github.io/seabORD/reference/plot_adult_body_mass.md),
[`plot_brddata()`](https://nerc-ceh.github.io/seabORD/reference/plot_brddata.md),
[`plot_calibration_outputs()`](https://nerc-ceh.github.io/seabORD/reference/plot_calibration_outputs.md),
[`plot_chick_survival()`](https://nerc-ceh.github.io/seabORD/reference/plot_chick_survival.md),
[`plot_colony_location()`](https://nerc-ceh.github.io/seabORD/reference/plot_colony_location.md),
[`plot_flight_distance()`](https://nerc-ceh.github.io/seabORD/reference/plot_flight_distance.md),
[`plot_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/plot_fltdist_base.md),
[`plot_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/plot_frgcompdata.md)

## Examples

``` r
# Load and plot the example sea mask
seamask <- get_example_seamask()
plot_seamask(seamask)

```
