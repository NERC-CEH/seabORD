# Plot offshore renewable development polygons

Creates a map of offshore renewable development polygons and overlays
coastlines for geographical context.

## Usage

``` r
plot_ORDpoly(ORDpoly, title = "Coastline and ORD footprints")
```

## Arguments

- ORDpoly:

  An `sf` polygon object containing one or more offshore renewable
  development footprints, such as the object returned by
  [`get_example_ORDpoly()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ORDpoly.md).

- title:

  Character string giving the plot title. Defaults to
  `"Coastline and ORD footprints"`.

## Value

A
[`ggplot2::ggplot()`](https://ggplot2.tidyverse.org/reference/ggplot.html)
object showing the offshore renewable development footprints and
coastline.

## Details

The plotting extent is calculated by transforming the ORD polygons to
EPSG:3035, applying a 50-km buffer around their combined bounding box,
and transforming the resulting extent to the coordinate reference system
of the coastline data.

Coastlines are displayed in red and ORD footprints are displayed in
blue.

## See also

[`get_example_ORDpoly()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ORDpoly.md)
for loading example ORD polygons and
[`plot_DD_map_with_ORDs()`](https://nerc-ceh.github.io/seabORD/reference/plot_DD_map_with_ORDs.md)
for plotting ORD footprints over a distance-decay surface.

Other plotting functions:
[`plot_BirdFlightMap()`](https://nerc-ceh.github.io/seabORD/reference/plot_BirdFlightMap.md),
[`plot_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DBS_map.md),
[`plot_DD_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DD_map.md),
[`plot_DD_map_with_ORDs()`](https://nerc-ceh.github.io/seabORD/reference/plot_DD_map_with_ORDs.md),
[`plot_ORD_obstruction()`](https://nerc-ceh.github.io/seabORD/reference/plot_ORD_obstruction.md),
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
# Load and plot the standard example ORD polygons
ORDpoly <- get_example_ORDpoly()
plot_ORDpoly(ORDpoly)


# Load and plot the Density-decay example
ORDpoly_dd <- get_example_ORDpoly("dd")
plot_ORDpoly(ORDpoly_dd)

```
