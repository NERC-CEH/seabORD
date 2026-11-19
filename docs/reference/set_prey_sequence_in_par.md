# Create a prey calibration sequence in Par

Generates a sequence of prey values spanning a specified range and
assigns it to `Par$Pmedian`. The number of values generated is
determined by `modPar$Nreplicates`.

## Usage

``` r
set_prey_sequence_in_par(Par, modPar, Pmin, Pmax)
```

## Arguments

- Par:

  A seabORD parameter list.

- modPar:

  A seabORD model parameter list containing `Nreplicates`.

- Pmin:

  Minimum prey value.

- Pmax:

  Maximum prey value.

## Value

The updated `Par` object with `Pmedian` populated.

## Examples

``` r
Par_example <- set_prey_sequence_in_par(
  Par = Par_example,
  modPar = modPar_example,
  Pmin = 150,
  Pmax = 200
)
#> Error: object 'modPar_example' not found
```
