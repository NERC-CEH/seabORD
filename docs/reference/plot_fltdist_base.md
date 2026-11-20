# Plot a baseline flight-distance raster

Creates a map of baseline flight distances from a breeding colony to
accessible foraging locations and overlays coastlines for geographical
context.

## Usage

``` r
plot_fltdist_base(
  fltdist_base,
  title = "Coastline and baseline flight distance",
  zoom = FALSE
)
```

## Arguments

- fltdist_base:

  A raster::RasterLayer object containing baseline flight distances,
  such as the object returned by
  [`get_example_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fltdist_base.md).

- title:

  Character string giving the plot title. Defaults to
  `"Coastline and baseline flight distance"`.

- zoom:

  Logical. If `TRUE`, zooms the map to the extent of `fltdist_base` plus
  a 10 km buffer. Defaults to `FALSE`.

## Value

A
[`ggplot2::ggplot()`](https://ggplot2.tidyverse.org/reference/ggplot.html)
object showing the baseline flight-distance raster and coastline.

## Details

The input raster represents distance by sea from a breeding colony or
SPA to each accessible raster cell. These distances are used by seabORD
to calculate travel time and the energetic costs associated with
foraging trips.

Raster cells with a value of zero are converted to missing values before
plotting. Non-missing values are displayed using a continuous viridis
colour scale.

The coastline data supplied with the package are transformed to the
coordinate reference system of `fltdist_base` before plotting.

## See also

[`get_example_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fltdist_base.md)
for loading example flight-distance rasters and
[`plot_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DBS_map.md)
for plotting a distance-by-sea raster.

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
[`plot_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/plot_frgcompdata.md),
[`plot_seamask()`](https://nerc-ceh.github.io/seabORD/reference/plot_seamask.md)

## Examples

``` r
# Load and plot the standard example flight-distance raster
fltdist_base <- get_example_fltdist_base()
plot_fltdist_base(fltdist_base)


# Load and plot the Density-decay example
fltdist_base_dd <- get_example_fltdist_base("dd")
plot_fltdist_base(fltdist_base_dd)

```
