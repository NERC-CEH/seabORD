# Energetics and prey data

Species-specific parameters used by seabORD: body mass, mortality and
abandonment thresholds, time budgets, energetics, prey intake and
mass-survival parameters, and expected outcomes in poor, moderate and
good years. Descriptions follow the package metadata table in
`R/functions-transform2seabord.R`.

## Usage

``` r
energeticsandpreydata
```

## Format

A data frame with the following 38 columns:

- Code:

  Character: Two-letter species code.

- Species:

  Character: Species name.

- BM_adult_mn:

  Numeric: Initial adult body mass, mean (g).

- BM_adult_sd:

  Numeric: Initial adult body mass, standard deviation (g).

- BM_adult_mortf:

  Numeric: Critical body mass below which an adult is assumed dead
  (proportion of mean mass).

- BM_adult_abdn:

  Numeric: Critical body mass below which an adult abandons its chick
  (proportion of mean mass).

- BM_chick_mn:

  Numeric: Initial chick body mass, mean (g).

- BM_chick_sd:

  Numeric: Initial chick body mass, standard deviation (g).

- BM_Chick_mortf:

  Numeric: Critical body mass below which a chick dies (proportion of
  initial mass).

- daylength:

  Numeric: Number of hours per time step.

- seasonlength:

  Numeric: Number of time steps per season.

- unattend_max_hrs:

  Numeric: Time a chick can be left unattended before it is assumed to
  die from exposure or predation (hours).

- adult_DEE_mn:

  Numeric: Adult daily energy expenditure, mean (kJ).

- adult_DEE_sd:

  Numeric: Adult daily energy expenditure, standard deviation (kJ).

- chick_DER:

  Numeric: Chick daily energy requirement (kJ per day).

- IR_max:

  Numeric: Maximum prey intake rate (g per minute).

- IR_half_a:

  Numeric: Intake-rate half-saturation parameter a (scales the
  half-saturation constant with competition).

- IR_half_b:

  Numeric: Intake-rate half-saturation parameter b (exponent applied to
  the competition factor).

- flight_msec:

  Numeric: Average flight speed (metres per second).

- assim_eff:

  Numeric: Assimilation efficiency (proportion).

- energy_prey:

  Numeric: Energy gained from prey (kJ per gram).

- energy_nest:

  Numeric: Energy cost of nesting at the colony (kJ per day).

- energy_flight:

  Numeric: Energy cost of flight (kJ per day).

- energy_searest:

  Numeric: Energy cost of resting at sea (kJ per day).

- energy_forage:

  Numeric: Energy cost of foraging (kJ per day).

- energy_warming:

  Numeric: Energy cost of warming food (kJ per day).

- chick_mass_a:

  Numeric: Maximum chick mass gain per day (g).

- adult_mass_KG:

  Numeric: Energy density of adult bird tissue (kJ per gram).

- beta:

  Numeric: Mass-survival slope (parameter of the mass-survival
  relationship).

- basesurv_poor:

  Numeric: Baseline adult survival in poor years (mass-survival
  relationship).

- basesurv_modr:

  Numeric: Baseline adult survival in moderate years (mass-survival
  relationship).

- basesurv_good:

  Numeric: Baseline adult survival in good years (mass-survival
  relationship).

- massloss_poor:

  Numeric: Expected adult body mass loss in poor years (percent).

- massloss_modr:

  Numeric: Expected adult body mass loss in moderate years (percent).

- massloss_good:

  Numeric: Expected adult body mass loss in good years (percent).

- chicksurv_poor:

  Numeric: Expected chick survival in poor years (percent).

- chicksurv_modr:

  Numeric: Expected chick survival in moderate years (percent).

- chicksurv_good:

  Numeric: Expected chick survival in good years (percent).

## Source

Species parameters compiled for seabORD from the publishedstudies cited
in the model description.
