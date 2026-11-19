# Plot a distance-decay map with ORD footprints

Creates a map showing a distance-decay raster together with offshore
renewable development footprints, associated buffer zones, and the
coastline.

## Usage

``` r
plot_DD_map_with_ORDs(
  DD_map,
  ORDpolys,
  colony,
  bufferwidth = 2,
  km_to_left = 30,
  km_to_right = 50,
  km_up = 30,
  km_down = 70,
  title = "DD map and ORD footprints"
)
```

## Arguments

- DD_map:

  A raster::RasterLayer object containing distance-decay values.

- ORDpolys:

  An `sf` polygon object containing one or more offshore renewable
  development footprints.

- colony:

  An `sf` point object containing the colony location used to define the
  plotting extent. The object must use a projected coordinate reference
  system with coordinates measured in metres.

- bufferwidth:

  Non-negative numeric scalar giving the width, in kilometres, of the
  buffer created around each ORD footprint. Defaults to `2`.

- km_to_left:

  Non-negative numeric scalar giving the distance, in kilometres, to
  extend the plotting area west of the colony. Defaults to `30`.

- km_to_right:

  Non-negative numeric scalar giving the distance, in kilometres, to
  extend the plotting area east of the colony. Defaults to `50`.

- km_up:

  Non-negative numeric scalar giving the distance, in kilometres, to
  extend the plotting area north of the colony. Defaults to `30`.

- km_down:

  Non-negative numeric scalar giving the distance, in kilometres, to
  extend the plotting area south of the colony. Defaults to `70`.

- title:

  Character string giving the plot title. Defaults to
  `"Distance-decay map and ORD footprints"`.

## Value

A
[`ggplot2::ggplot()`](https://ggplot2.tidyverse.org/reference/ggplot.html)
object showing the distance-decay raster, ORD footprints, ORD buffer
zones, and coastline.

## Details

The distance-decay raster and coastline are cropped around the colony
before plotting. This focuses the map on the area of interest and
reduces the amount of spatial data that must be rendered.

ORD footprints are displayed in blue and their associated buffer zones
are displayed in light blue. Distance-decay values are displayed using a
continuous viridis colour scale.

All spatial inputs should use compatible projected coordinate reference
systems.

## See also

[`plot_DD_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DD_map.md)
for plotting a distance-decay raster without ORD footprints,
[`get_example_ORDpoly()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ORDpoly.md)
for loading example ORD polygons, and
[`plot_ORD_obstruction()`](https://nerc-ceh.github.io/seabORD/reference/plot_ORD_obstruction.md)
for identifying obstructed areas.

Other plotting functions:
[`plot_BirdFlightMap()`](https://nerc-ceh.github.io/seabORD/reference/plot_BirdFlightMap.md),
[`plot_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DBS_map.md),
[`plot_DD_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DD_map.md),
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
plot_DD_map_with_ORDs(
  DD_map = DD_map,
  ORDpolys = ORDpolys,
  colony = colony,
  bufferwidth = 2
)
} # }
```
