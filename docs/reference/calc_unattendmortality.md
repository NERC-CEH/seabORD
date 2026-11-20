# Chick mortality as a result of adults not attending the nest

Determines whether a chick dies as a result of being left unattended by
its parents during a model time step. Longer periods of unattendance
increase the risk of mortality through mechanisms such as predation or
exposure.

The probability of death increases linearly with the duration of
unattendance, reaching 100% when the unattendance period equals or
exceeds the species-specific critical threshold.

A stochastic draw is then used to determine whether mortality occurs.

## Usage

``` r
calc_unattendmortality(CoD, alive, unattend_hrs, max_hrs)
```

## Arguments

- CoD:

  Current cause of death. Typically `"none"` if the chick is alive.

- alive:

  Indicator of whether the chick is currently alive (`1`) or dead (`0`).

- unattend_hrs:

  Number of hours for which the chick was left unattended.

- max_hrs:

  Species-specific critical unattendance threshold (hours), above which
  mortality is assumed to occur.

## Value

A character string giving the updated cause of death. Returns the
original value of `CoD` if the chick survives.

## Details

The probability of mortality is calculated as:

\$\$P(death) = unattend\\hrs / max\\hrs\$\$

capped at a maximum value of 1.

Mortality is then determined through a binomial random draw. If
mortality occurs, the cause of death is updated to `"unattended"`.

## See also

[`calc_chickcare()`](https://nerc-ceh.github.io/seabORD/reference/calc_chickcare.md)

## Examples

``` r
# Chick attended by its parents
calc_unattendmortality(
  CoD = "none",
  alive = 1,
  unattend_hrs = 0,
  max_hrs = 18
)
#> [1] "none"

# Chick left unattended for a short period
calc_unattendmortality(
  CoD = "none",
  alive = 1,
  unattend_hrs = 6,
  max_hrs = 18
)
#> [1] "none"

# Chick left unattended for the maximum allowable time
calc_unattendmortality(
  CoD = "none",
  alive = 1,
  unattend_hrs = 18,
  max_hrs = 18
)
#> [1] "unattended"
```
