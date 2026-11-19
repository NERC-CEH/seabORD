# Identify prey values meeting calibration criteria

Evaluates adult mass loss and chick productivity outputs from a seabORD
calibration run and identifies prey values that satisfy both calibration
criteria simultaneously.

## Usage

``` r
calc_calibration_range(
  sbordout,
  masslower = 0.09,
  massupper = 0.11,
  prodlower = 0.45,
  produpper = 0.55
)
```

## Arguments

- sbordout:

  A seabORD output object containing calibration results, including
  `output_a0$data` and `output_c0$data`.

- masslower:

  Lower acceptable bound for proportional adult mass loss. Defaults to
  `0.09`.

- massupper:

  Upper acceptable bound for proportional adult mass loss. Defaults to
  `0.11`.

- prodlower:

  Lower acceptable bound for chick productivity (`ChicksPerNest`).
  Defaults to `0.45`.

- produpper:

  Upper acceptable bound for chick productivity (`ChicksPerNest`).
  Defaults to `0.55`.

## Value

A data frame containing:

- Prey:

  The prey value tested during calibration.

- adult_ok:

  Logical indicating whether adult mass loss falls within the specified
  bounds.

- chick_ok:

  Logical indicating whether chick productivity falls within the
  specified bounds.

- overlap:

  Logical indicating whether both criteria are met simultaneously.

## Details

Adult mass loss is calculated as: \$\$ (BM\\adult\\t0.mn - BM\\adult.mn)
/ BM\\adult\\t0.mn \$\$

Prey values where both `adult_ok` and `chick_ok` are `TRUE` represent
the calibration range that satisfies the specified moderate conditions.

## Examples

``` r
if (FALSE) { # \dontrun{
sbordout <- seabORD::example_calibration_output_dd

calibration_range <- calc_calibration_range(
  sbordout = sbordout,
  masslower = 0.09,
  massupper = 0.11,
  prodlower = 0.45,
  produpper = 0.55
)

# View prey values satisfying both criteria
calibration_range[calibration_range$overlap, ]
} # }
```
