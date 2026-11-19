# Plot areas affected by ORD obstruction

Identifies and plots raster cells where offshore renewable developments
increase distance by sea relative to the unobstructed baseline.

## Usage

``` r
plot_ORD_obstruction(
  DBS_map,
  DBS_withORDs,
  colony,
  smalltol = 0.01,
  km_to_left = 30,
  km_to_right = 50,
  km_up = 30,
  km_down = 70
)
```

## Arguments

- DBS_map:

  A raster::RasterLayer object containing baseline distance-by-sea
  values calculated without ORD obstruction.

- DBS_withORDs:

  A raster::RasterLayer object containing distance-by-sea values
  calculated with ORD obstruction.

- colony:

  An `sf` point object containing the colony location used to define the
  plotting extent. The object must use a projected coordinate reference
  system with coordinates measured in metres.

- smalltol:

  Non-negative numeric scalar defining the minimum increase in distance
  by sea required for a cell to be classified as obstructed. Defaults to
  `0.01`.

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

## Value

A
[`ggplot2::ggplot()`](https://ggplot2.tidyverse.org/reference/ggplot.html)
object classifying raster cells as accessible sea, obstructed sea, or
land.

## Details

A cell is classified as obstructed when:

\$\$DBS\_{\mathrm{with\\ ORDs}} - DBS\_{\mathrm{baseline}} \>
\mathrm{smalltol}\$\$

Obstructed cells therefore represent locations for which the presence of
ORD footprints alters the available routes and increases the distance
travelled over sea.

The comparison raster is cropped around `colony` using the specified
directional distances. Accessible sea is displayed in white, obstructed
sea in red, and land in grey.

## See also

[`get_example_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/get_example_DBS_map.md)
for loading the baseline and ORD-inclusive distance-by-sea rasters, and
[`plot_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DBS_map.md)
for plotting either raster separately.

Other plotting functions:
[`plot_BirdFlightMap()`](https://nerc-ceh.github.io/seabORD/reference/plot_BirdFlightMap.md),
[`plot_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DBS_map.md),
[`plot_DD_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DD_map.md),
[`plot_DD_map_with_ORDs()`](https://nerc-ceh.github.io/seabORD/reference/plot_DD_map_with_ORDs.md),
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
DBS_map <- get_example_DBS_map()
DBS_withORDs <- get_example_DBS_map("ords")

plot_ORD_obstruction(
  DBS_map = DBS_map,
  DBS_withORDs = DBS_withORDs,
  colony = colony
)
} # }
```
