# Plot a colony location and surrounding coastline

Creates a detailed map of a colony location and the surrounding
coastline.

## Usage

``` r
plot_colony_location(colony, expand_km = 1)
```

## Arguments

- colony:

  An `sf` point object containing the colony location. The object must
  use the ETRS89-extended / LAEA Europe coordinate reference system
  (EPSG:3035).

- expand_km:

  Non-negative numeric scalar giving the distance, in kilometres, to
  extend the plotting window from the colony in each direction. Defaults
  to `1`.

## Value

A
[`ggplot2::ggplot()`](https://ggplot2.tidyverse.org/reference/ggplot.html)
object showing the colony location and surrounding coastline.

## Details

The plot is centred on the supplied colony point and displays a square
plotting window extending `expand_km` kilometres to the north, south,
east, and west.

This plot can be used to check that colony coordinates are correctly
positioned on the coastline before generating distance-by-sea rasters or
running a seabORD simulation.

The coastline is displayed in grey and the colony is shown using a blue
cross.

## See also

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
[`plot_flight_distance()`](https://nerc-ceh.github.io/seabORD/reference/plot_flight_distance.md),
[`plot_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/plot_fltdist_base.md),
[`plot_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/plot_frgcompdata.md),
[`plot_seamask()`](https://nerc-ceh.github.io/seabORD/reference/plot_seamask.md)

## Examples

``` r
if (FALSE) { # \dontrun{
colony <- create_colony_point(
  lon = -1.85849,
  lat = 57.388807
)

plot_colony_location(
  colony = colony,
  expand_km = 1
)
} # }
```
