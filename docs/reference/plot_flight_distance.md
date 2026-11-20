# Plot mean flight distance by season

Creates a boxplot comparing mean total baseline flight distance between
modelled seasons.

## Usage

``` r
plot_flight_distance(sbordout_output_flight)
```

## Arguments

- sbordout_output_flight:

  A seabORD flight-output object containing a `data` component. The data
  must include the columns `Season` and `Tot_basickm.mn`, such as
  `sbordout$output_f0`.

## Value

A
[`ggplot2::ggplot()`](https://ggplot2.tidyverse.org/reference/ggplot.html)
object showing the distribution of mean total flight distance within
each season.

## Details

`Tot_basickm.mn` is the mean total baseline flight distance, in
kilometres, across simulated birds within a replicate.

Each boxplot summarises `Tot_basickm.mn` across simulation replicates
for one modelled season. This allows flight-distance distributions in
the baseline and scenario seasons to be compared.

## See also

[`plot_adult_body_mass()`](https://nerc-ceh.github.io/seabORD/reference/plot_adult_body_mass.md)
for plotting adult body mass and
[`plot_chick_survival()`](https://nerc-ceh.github.io/seabORD/reference/plot_chick_survival.md)
for plotting chick survival.

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
[`plot_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/plot_fltdist_base.md),
[`plot_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/plot_frgcompdata.md),
[`plot_seamask()`](https://nerc-ceh.github.io/seabORD/reference/plot_seamask.md)

## Examples

``` r
if (FALSE) { # \dontrun{
sbordout <- get_example_output()

plot_flight_distance(
  sbordout_output_flight = sbordout$output_f0
)
} # }
```
