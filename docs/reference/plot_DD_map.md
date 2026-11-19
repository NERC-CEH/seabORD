# Plot a distance-decay map

Creates a map of a distance-decay raster and optionally crops the map
around a colony location.

## Usage

``` r
plot_DD_map(
  DD_map,
  colony = NULL,
  km_to_left = 30,
  km_to_right = 50,
  km_up = 30,
  km_down = 70,
  crop = FALSE,
  title = "Distance-decay map"
)
```

## Arguments

- DD_map:

  A raster::RasterLayer object containing distance-decay values.

- colony:

  An `sf` point object containing the colony location. This is required
  when `crop = TRUE` and must use a projected coordinate reference
  system with coordinates measured in metres.

- km_to_left:

  Non-negative numeric scalar giving the distance, in kilometres, to
  extend the cropped area west of the colony. Defaults to `30`.

- km_to_right:

  Non-negative numeric scalar giving the distance, in kilometres, to
  extend the cropped area east of the colony. Defaults to `50`.

- km_up:

  Non-negative numeric scalar giving the distance, in kilometres, to
  extend the cropped area north of the colony. Defaults to `30`.

- km_down:

  Non-negative numeric scalar giving the distance, in kilometres, to
  extend the cropped area south of the colony. Defaults to `70`.

- crop:

  Logical scalar indicating whether `DD_map` should be cropped around
  `colony`. Defaults to `FALSE`.

- title:

  Character string giving the plot title. Defaults to
  `"Distance-decay map"`.

## Value

A
[`ggplot2::ggplot()`](https://ggplot2.tidyverse.org/reference/ggplot.html)
object showing the distance-decay raster.

## Details

When `crop = FALSE`, the complete raster is plotted.

When `crop = TRUE`, `colony` must be supplied. The plotting extent is
calculated using the four directional distances. These distances are
converted from kilometres to metres, so the colony and raster must use a
projected coordinate reference system with coordinates measured in
metres.

## See also

[`plot_DD_map_with_ORDs()`](https://nerc-ceh.github.io/seabORD/reference/plot_DD_map_with_ORDs.md)
for adding ORD footprints and buffer zones.

Other plotting functions:
[`plot_BirdFlightMap()`](https://nerc-ceh.github.io/seabORD/reference/plot_BirdFlightMap.md),
[`plot_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DBS_map.md),
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
# Plot the complete distance-decay map
plot_DD_map(DD_map)

# Plot the map cropped around a colony
plot_DD_map(
  DD_map = DD_map,
  colony = colony,
  crop = TRUE
)
} # }
```
