# Puffin chick mortality from predation due to hunger

Determines whether a puffin chick dies from predation associated with
poor body condition. Hungry chicks are assumed to spend more time near
the burrow entrance, increasing their vulnerability to predators.

Chicks whose body condition falls below the hunger threshold are
assigned a probability of predation that increases as body condition
declines. A stochastic draw is then used to determine whether mortality
occurs during the current time step.

## Usage

``` r
calc_puffinmortality(CoD, alive, BM_condition, BM_Chick_mortf)
```

## Arguments

- CoD:

  Current cause of death. Typically `"none"` if the chick is alive.

- alive:

  Indicator of whether the chick is currently alive (`1`) or dead (`0`).

- BM_condition:

  Relative chick body condition, expressed as a proportion of the
  expected body mass for its age.

- BM_Chick_mortf:

  Critical body condition threshold below which the chick dies from
  starvation.

## Value

A character string giving the updated cause of death. Returns the
original value of `CoD` if the chick survives.

## Details

Puffin chicks with a body condition below 0.7 are classified as hungry.
For hungry chicks, the probability of predation increases as body
condition declines from the hunger threshold towards the starvation
threshold (`BM_Chick_mortf`).

Mortality is then determined through a binomial random draw. If
mortality occurs, the cause of death is updated to `"killed"`.

## See also

[`calc_chickcare()`](https://nerc-ceh.github.io/seabORD/reference/calc_chickcare.md)

## Examples

``` r
# Healthy chick
calc_puffinmortality(
  CoD = "none",
  alive = 1,
  BM_condition = 0.9,
  BM_Chick_mortf = 0.5
)
#> [1] "none"

# Hungry chick
calc_puffinmortality(
  CoD = "none",
  alive = 1,
  BM_condition = 0.6,
  BM_Chick_mortf = 0.5
)
#> [1] "none"

# Explore outcomes under repeated simulations
mortality <- replicate(
  1000,
  calc_puffinmortality(
    CoD = "none",
    alive = 1,
    BM_condition = 0.6,
    BM_Chick_mortf = 0.5
  )
)

table(mortality)
#> mortality
#> killed   none 
#>    499    501 
```
