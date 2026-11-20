# Parenting the chicks

For each chick, get the food provided by each of the parent birds and
increase the chick body mass. Compare with the 'optimum chick' to
estimate relative body condition and update the chick state. Add up the
total hours of attendance for the timestep.

## Usage

``` r
calc_chickcare(parent, ChickState, Opt_BM_chick, Species)
```

## Arguments

- parent:

  A tibble containing the required variables from the adult birds
  (BirdID, PairID, feeding_mode, Ereq_intakef_c, colony_h, MF).

- ChickState:

  List holding the current state of all the chicks and metadata.

- Opt_BM_chick:

  The optimum body mass for the chick at this stage of the season (a
  chick that has received full requirements every day).

- Species:

  List holding the species-specific variables (uses daylength,
  BM_Chick_mortf and chick_mass_a)

## Value

The updated list holding the tibbles for the chick current state.

## Details

For each chick, food delivered by the male and female parent is summed
and converted into growth. The resulting body mass is compared with the
expected body mass for a chick of the same age to calculate relative
body condition.

Chicks may die through one of three pathways:

- `"starved"`: body condition falls below the mortality threshold.

- `"abandoned"`: one or both parents abandon the breeding attempt.

- `"parentdead"`: one or both parents die.

In addition, the maximum period for which a chick is left unattended is
calculated from the combined colony attendance of both parents.
