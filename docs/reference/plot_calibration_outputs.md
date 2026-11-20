# Plot calibration outputs across prey values

Creates paired calibration plots showing adult proportional mass loss
and chick productivity across the range of prey values evaluated during
a seabORD calibration run.

## Usage

``` r
plot_calibration_outputs(
  sbordout,
  calibration,
  masslower = 0.09,
  massupper = 0.11,
  prodlower = 0.45,
  produpper = 0.55
)
```

## Arguments

- sbordout:

  A seabORD calibration-output object containing `output_a0$data` and
  `output_c0$data`.

- calibration:

  A data frame returned by
  [`calc_calibration_range()`](https://nerc-ceh.github.io/seabORD/reference/calc_calibration_range.md).
  It must contain `Prey` and `overlap` columns identifying prey values
  that satisfy both the adult and chick calibration criteria.

- masslower:

  Numeric scalar giving the lower acceptable bound for proportional
  adult mass loss. Defaults to `0.09`.

- massupper:

  Numeric scalar giving the upper acceptable bound for proportional
  adult mass loss. Defaults to `0.11`.

- prodlower:

  Numeric scalar giving the lower acceptable bound for chick
  productivity, measured as chicks per nest. Defaults to `0.45`.

- produpper:

  Numeric scalar giving the upper acceptable bound for chick
  productivity, measured as chicks per nest. Defaults to `0.55`.

## Value

A `gtable` object produced by
[`gridExtra::grid.arrange()`](https://rdrr.io/pkg/gridExtra/man/arrangeGrob.html)
containing two vertically arranged calibration plots:

- proportional adult mass loss across prey values; and

- chick productivity across prey values.

## Details

Proportional adult mass loss is calculated as:

\$\$ \frac{BM\_{\mathrm{adult},t0} - BM\_{\mathrm{adult}}}
{BM\_{\mathrm{adult},t0}} \$\$

The light-blue region identifies the range of prey values for which
`calibration$overlap` is `TRUE`. These prey values satisfy the adult
mass-loss and chick-productivity criteria simultaneously.

Grey dashed horizontal lines show the lower and upper calibration
bounds. Solid vertical lines show the minimum and maximum prey values in
the overlapping calibration range.

## See also

[`calc_calibration_range()`](https://nerc-ceh.github.io/seabORD/reference/calc_calibration_range.md)
for identifying prey values that satisfy the calibration criteria and
[`get_example_output()`](https://nerc-ceh.github.io/seabORD/reference/get_example_output.md)
for loading example calibration output.

Other plotting functions:
[`plot_BirdFlightMap()`](https://nerc-ceh.github.io/seabORD/reference/plot_BirdFlightMap.md),
[`plot_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DBS_map.md),
[`plot_DD_map()`](https://nerc-ceh.github.io/seabORD/reference/plot_DD_map.md),
[`plot_DD_map_with_ORDs()`](https://nerc-ceh.github.io/seabORD/reference/plot_DD_map_with_ORDs.md),
[`plot_ORD_obstruction()`](https://nerc-ceh.github.io/seabORD/reference/plot_ORD_obstruction.md),
[`plot_ORDpoly()`](https://nerc-ceh.github.io/seabORD/reference/plot_ORDpoly.md),
[`plot_adult_body_mass()`](https://nerc-ceh.github.io/seabORD/reference/plot_adult_body_mass.md),
[`plot_brddata()`](https://nerc-ceh.github.io/seabORD/reference/plot_brddata.md),
[`plot_chick_survival()`](https://nerc-ceh.github.io/seabORD/reference/plot_chick_survival.md),
[`plot_colony_location()`](https://nerc-ceh.github.io/seabORD/reference/plot_colony_location.md),
[`plot_flight_distance()`](https://nerc-ceh.github.io/seabORD/reference/plot_flight_distance.md),
[`plot_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/plot_fltdist_base.md),
[`plot_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/plot_frgcompdata.md),
[`plot_seamask()`](https://nerc-ceh.github.io/seabORD/reference/plot_seamask.md)

## Examples

``` r
if (FALSE) { # \dontrun{
sbordout <- get_example_output("cal_dd")

calibration <- calc_calibration_range(
  sbordout = sbordout,
  masslower = 0.09,
  massupper = 0.11,
  prodlower = 0.45,
  produpper = 0.55
)

plot_calibration_outputs(
  sbordout = sbordout,
  calibration = calibration
)
} # }
```
