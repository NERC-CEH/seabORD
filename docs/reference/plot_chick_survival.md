# Plot chick survival by season

Creates a boxplot comparing the number of chicks alive between modelled
seasons.

## Usage

``` r
plot_chick_survival(sbordout_output_chicks, title = "Chicks alive by season")
```

## Arguments

- sbordout_output_chicks:

  A seabORD chick-output object containing a `data` component. The data
  must include the columns `Season` and `N_alive_ch`, such as
  `sbordout$output_c0`.

- title:

  Character string giving the plot title. Defaults to
  `"Chicks alive by season"`.

## Value

A
[`ggplot2::ggplot()`](https://ggplot2.tidyverse.org/reference/ggplot.html)
object showing the distribution of the number of chicks alive within
each season.

## Details

Each boxplot summarises `N_alive_ch` across simulation replicates for
one modelled season. This allows chick survival in the baseline and
scenario seasons to be compared.

## See also

[`plot_adult_body_mass()`](https://nerc-ceh.github.io/seabORD/reference/plot_adult_body_mass.md)
for plotting adult body mass and
[`plot_flight_distance()`](https://nerc-ceh.github.io/seabORD/reference/plot_flight_distance.md)
for plotting mean flight distance.

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
[`plot_colony_location()`](https://nerc-ceh.github.io/seabORD/reference/plot_colony_location.md),
[`plot_flight_distance()`](https://nerc-ceh.github.io/seabORD/reference/plot_flight_distance.md),
[`plot_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/plot_fltdist_base.md),
[`plot_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/plot_frgcompdata.md),
[`plot_seamask()`](https://nerc-ceh.github.io/seabORD/reference/plot_seamask.md)

## Examples

``` r
if (FALSE) { # \dontrun{
sbordout <- get_example_output()

plot_chick_survival(
  sbordout_output_chicks = sbordout$output_c0
)
} # }
```
