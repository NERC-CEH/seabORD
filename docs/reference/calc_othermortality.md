# Chick mortality as a result of other causes

Chicks can be lost from other causes such as flooding, storms etc. This
function calculates the probability of death and then uses rbinom to
remove some chicks according to that probability. A fixed seasonal
mortality rate is distributed evenly across all model time steps, and a
stochastic draw is used to determine whether mortality occurs during the
current time step.

## Usage

``` r
calc_othermortality(CoD, alive, seasonlength)
```

## Arguments

- CoD:

  Current cause of death. Typically `"none"` if the chick is alive.

- alive:

  Indicator of whether the chick is currently alive (`1`) or dead (`0`).

- seasonlength:

  Number of time steps in the breeding season.

## Value

A character string giving the updated cause of death. Returns the
original value of `CoD` if the chick survives.

## Details

The function assumes a total background chick mortality rate of 5%
across the breeding season. This seasonal probability is converted into
an equivalent mortality probability for a single time step:

\$\$P(death) = 1 - (1 - 0.05)^{1/seasonlength}\$\$

Mortality is then determined using a binomial random draw. If mortality
occurs, the cause of death is updated to `"other"`.

## See also

[`calc_chickcare()`](https://nerc-ceh.github.io/seabORD/reference/calc_chickcare.md),
[`calc_unattendmortality()`](https://nerc-ceh.github.io/seabORD/reference/calc_unattendmortality.md)

## Examples

``` r
# Living chick exposed to background mortality
calc_othermortality(
  CoD = "none",
  alive = 1,
  seasonlength = 40
)
#> [1] "none"

# Repeat many times to estimate mortality frequency
mortality <- replicate(
  1000,
  calc_othermortality(
    CoD = "none",
    alive = 1,
    seasonlength = 40
  )
)

table(mortality)
#> mortality
#>  none other 
#>   999     1 
```
