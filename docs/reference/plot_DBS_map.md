# Plot a distance-by-sea raster

Creates a map of distance-by-sea values and overlays coastlines for
geographical context.

## Usage

``` r
plot_DBS_map(DBS_map, title = "Coastline and distance by sea")
```

## Arguments

- DBS_map:

  A raster::RasterLayer object containing distance-by-sea values, such
  as the object returned by
  [`get_example_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/get_example_DBS_map.md).

- title:

  Character string giving the plot title. Defaults to
  `"Coastline and distance by sea"`.

## Value

A
[`ggplot2::ggplot()`](https://ggplot2.tidyverse.org/reference/ggplot.html)
object showing the distance-by-sea raster and coastline.

## Details

A distance-by-sea raster represents the distance travelled over
accessible sea cells rather than the straight-line Euclidean distance
between locations.

Raster cells with a value of zero are converted to missing values before
plotting. Non-missing values are displayed using a continuous viridis
colour scale.

The coastline data supplied with the package are transformed to the
coordinate reference system of `DBS_map` before plotting.

## See also

[`get_example_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/get_example_DBS_map.md)
for loading example distance-by-sea rasters and
[`plot_ORD_obstruction()`](https://nerc-ceh.github.io/seabORD/reference/plot_ORD_obstruction.md)
for identifying areas affected by ORD obstruction.

Other plotting functions:
[`plot_BirdFlightMap()`](https://nerc-ceh.github.io/seabORD/reference/plot_BirdFlightMap.md),
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
# Load and plot the baseline distance-by-sea raster
DBS_map <- get_example_DBS_map()
plot_DBS_map(DBS_map)


# Load and plot the distance-by-sea raster containing ORDs
DBS_with_ORDs <- get_example_DBS_map("ords")
plot_DBS_map(DBS_with_ORDs)

```
