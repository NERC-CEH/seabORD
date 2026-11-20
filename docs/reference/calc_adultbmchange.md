# Update adult body mass

Calculate body mass change. All adult birds update their body mass at
the end of each day based on the energy they gain and expend foraging
and in other activities. The model we use is an expanded version of that
used in Daunt & Wanless (2008) and Wanless et al. (1997), which
separates flight cost and foraging cost for each adult to derive total
energy expenditure

## Usage

``` r
calc_adultbmchange(alive, BM_adult, Egain_adult, Ereq_adult, adult_mass_KG)
```

## Arguments

- alive:

  Is the bird dead or alive? FALSE, TRUE

- BM_adult:

  Body mass of the adult bird, g

- Egain_adult:

  Energy actually acquired in the time step, kJ

- Ereq_adult:

  The full energy requirement for this time step, kJ

- adult_mass_KG:

  Energy density of the adult bird tissue, kJ per gram

## Value

A revised adult body mass

## Details

Adult body mass is updated according to:

\$\$ M\_{t+1} = M_t + \frac{(E\_{gain} - E\_{req})}{KG} \$\$

where \\M_t\\ is the current body mass, \\E\_{gain}\\ is the energy
acquired during the time step, \\E\_{req}\\ is the energetic
requirement, and \\KG\\ is the energy density of adult tissue.

Positive energy balance results in mass gain, while negative energy
balance results in mass loss.

## References

Daunt & Wanless (2008); Wanless et al. (1997).

## Examples

``` r
# Adult gains more energy than it expends
calc_adultbmchange(
  alive = TRUE,
  BM_adult = 400,
  Egain_adult = 1200,
  Ereq_adult = 1000,
  adult_mass_KG = 25
)
#> [1] 408

# Adult expends more energy than it gains
calc_adultbmchange(
  alive = TRUE,
  BM_adult = 400,
  Egain_adult = 800,
  Ereq_adult = 1000,
  adult_mass_KG = 25
)
#> [1] 392
```
