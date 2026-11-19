# Plot a bird-flight map

Creates a map of simulated bird foraging locations from a seabORD
`BirdFlightMap` output and overlays coastlines for geographical context.

## Usage

``` r
plot_BirdFlightMap(
  sbordout,
  ORDpolys = NULL,
  xlim = NULL,
  ylim = NULL,
  title = "Coastline and bird-flight map"
)
```

## Arguments

- sbordout:

  list containing "BirdFlightMap" which is a `RasterLayer`,
  `SpatRaster`, or compatible raster object containing the number of
  simulated visits to each foraging location, such as
  `sbordout$BirdFlightMap`.

- xlim:

  Optional numeric vector of length two giving the lower and upper
  x-axis limits. When `NULL`, the limits are calculated from raster
  cells with values greater than zero.

- ylim:

  Optional numeric vector of length two giving the lower and upper
  y-axis limits. When `NULL`, the limits are calculated from raster
  cells with values greater than zero.

- title:

  Character string giving the plot title. Defaults to
  `"Coastline and bird-flight map"`.

## Value

A
[`ggplot2::ggplot()`](https://ggplot2.tidyverse.org/reference/ggplot.html)
object showing the simulated foraging locations and coastline.

## Details

The input raster is converted to a `terra` `SpatRaster` and transformed
to the coordinate reference system of the coastline data before
plotting.

If `xlim` or `ylim` is not supplied, the relevant limits are calculated
from raster cells with values greater than zero, with a one-percent
buffer added around the observed range.

If the raster contains no positive values, the coastline bounding box is
used as the plotting extent.

## See also

[`get_example_output()`](https://nerc-ceh.github.io/seabORD/reference/get_example_output.md)
for loading precomputed seabORD output.

Other plotting functions:
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
[`plot_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/plot_frgcompdata.md),
[`plot_seamask()`](https://nerc-ceh.github.io/seabORD/reference/plot_seamask.md)

## Examples

``` r
if (FALSE) { # \dontrun{
sbordout <- get_example_output()

plot_BirdFlightMap(
  sbordout = sbordout
)
} # }
```
