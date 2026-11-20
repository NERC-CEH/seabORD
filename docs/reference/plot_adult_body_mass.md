# Plot adult body mass by season

Creates a boxplot comparing mean adult body mass between modelled
seasons.

## Usage

``` r
plot_adult_body_mass(
  sbordout_output_adults,
  title = "Adult body mass by season"
)
```

## Arguments

- sbordout_output_adults:

  A seabORD adult-output object containing a `data` component. The data
  must include the columns `Season` and `BM_adult.mn`, such as
  `sbordout$output_a0`.

- title:

  Character string giving the plot title. Defaults to
  `"Adult body mass by season"`.

## Value

A
[`ggplot2::ggplot()`](https://ggplot2.tidyverse.org/reference/ggplot.html)
object showing the distribution of mean adult body mass within each
season.

## Details

Each boxplot summarises `BM_adult.mn` across simulation replicates for
one modelled season. This allows the baseline and scenario distributions
of adult body mass to be compared.

## See also

[`plot_chick_survival()`](https://nerc-ceh.github.io/seabORD/reference/plot_chick_survival.md)
for plotting chick survival and
[`plot_flight_distance()`](https://nerc-ceh.github.io/seabORD/reference/plot_flight_distance.md)
for plotting mean flight distance.

Other plotting functions:
[`plot_BirdFlightMap()`](https://nerc-ceh.github.io/seabORD/reference/plot_BirdFlightMap.md),
[`plot_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DBS_map.md),
[`plot_DD_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DD_map.md),
[`plot_DD_map_with_ORDs()`](https://nerc-ceh.github.io/seabORD/reference/plot_DD_map_with_ORDs.md),
[`plot_ORD_obstruction()`](https://nerc-ceh.github.io/seabORD/reference/plot_ORD_obstruction.md),
[`plot_ORDpoly()`](https://nerc-ceh.github.io/seabORD/reference/plot_ORDpoly.md),
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
sbordout <- get_example_output()

plot_adult_body_mass(
  sbordout_output_adults = sbordout$output_a0
)
} # }
```
