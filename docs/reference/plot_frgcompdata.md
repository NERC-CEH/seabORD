# Plot a foraging-competition raster

Creates a map of the spatial distribution of birds from colonies that
are not simulated directly but may compete with the modelled population
at foraging locations.

## Usage

``` r
plot_frgcompdata(
  frgcompdata,
  title = "Coastline and foraging-competition distribution",
  zoom = FALSE
)
```

## Arguments

- frgcompdata:

  A raster::RasterLayer object containing the foraging-competition
  distribution, such as the object returned by
  [`get_example_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/get_example_frgcompdata.md).

- title:

  Character string giving the plot title. Defaults to
  `"Coastline and foraging-competition distribution"`.

- zoom:

  Logical. If `TRUE`, zooms the map to the extent of `frgcompdata` plus
  a 10 km buffer. Defaults to `FALSE`.

## Value

A
[`ggplot2::ggplot()`](https://ggplot2.tidyverse.org/reference/ggplot.html)
object showing the foraging-competition raster and coastline.

## Details

The input raster represents the spatial distribution of birds from
surrounding colonies that are not simulated directly. These birds may
compete with the modelled population and influence intake rates at
foraging locations.

Raster cells with a value of zero are converted to missing values before
plotting. Non-missing values are displayed using a continuous viridis
colour scale.

The coastline data supplied with the package are transformed to the
coordinate reference system of `frgcompdata` before plotting.

## See also

[`get_example_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/get_example_frgcompdata.md)
for loading example foraging-competition rasters and
[`plot_brddata()`](https://nerc-ceh.github.io/seabORD/reference/plot_brddata.md)
for plotting bird-distribution data.

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
[`plot_seamask()`](https://nerc-ceh.github.io/seabORD/reference/plot_seamask.md)

## Examples

``` r
# Load and plot the standard example competition distribution
frgcompdata <- get_example_frgcompdata()
plot_frgcompdata(frgcompdata)


# Load and plot the Density-decay example
frgcompdata_dd <- get_example_frgcompdata("dd")
plot_frgcompdata(frgcompdata_dd)

```
