# Calculate the foraging strategy for the timestep

Determines the foraging strategy adopted by an individual bird during a
single model time step. The function evaluates a series of possible
behavioural responses based on the bird's energetic requirements, body
condition, available foraging time, and chick-rearing commitments.

The selected strategy aims to balance self-maintenance and chick
provisioning while respecting the time constraints of the day.

Birds first attempt to satisfy their food requirements while maintaining
optimal attendance at the colony. If this is not possible, increasingly
costly strategies are considered, including reduced chick attendance or
abandonment of the breeding attempt.

The following strategies are evaluated in sequence:

1.  Acquire all required food while maintaining optimal colony
    attendance.

2.  Acquire as much food as possible while maintaining optimal colony
    attendance.

3.  Acquire all required food while reducing colony attendance.

4.  Acquire as much food as possible while reducing colony attendance.

## Usage

``` r
calc_strategy(
  BM_condition,
  BM_adult_abdn,
  fmode,
  Fg,
  tf,
  tcapt,
  maxf,
  ts,
  tc,
  tm,
  ttotal
)
```

## Arguments

- BM_condition:

  The relative body condition of the bird which may influence the
  strategy

- BM_adult_abdn:

  The relative body condition at which the adult abandons the chick

- fmode:

  The feeding mode of the individual in the previous timestep
  (numeric())

- Fg:

  The total amount of food to be gathered across multiple flights within
  the timestep, (numeric())

- tf:

  The time it takes to fly the trip once, (numeric())

- tcapt:

  A look-up giving the amount of food captured after t minutes, (tibble,
  2 variables, tmin, captured_g)

- maxf:

  The maximum number of flights permitted, (integer)

- ts:

  The minimum time that must be spent at sea, (numeric())

- tc:

  The optimum time to be spent at the colony, (numeric())

- tm:

  The minimum time that can be spent at the colony (numeric())

- ttotal:

  The length of a 'day' for this species in hours, giving the maximum
  time in which to fit the flights, (integer)

## Value

\#' A tibble containing:

- `trips_n`: number of foraging trips.

- `foraging_h`: total time spent foraging (hours).

- `flying_h`: total time spent flying (hours).

- `forage_g`: total prey captured (g).

- `colony_h`: time spent at the colony (hours).

- `at_sea_h`: time spent at sea (hours).

- `feeding_mode`: behavioural strategy selected.

## Details

Adult birds are classified into the following behavioural states:

- 1 = Alive with chick, in good body condition.

- 2 = Alive with chick, in moderate body condition.

- 3 = Alive with chick, close to the abandonment threshold.

- 4 = Alive without a chick.

- 5 = Dead.

The function returns one of four feeding modes:

- 1 = Provisioning: the chick is attended and provisioned.

- 2 = Unattended: the chick is left unattended for part of the time
  step.

- 3 = Abandoned: the breeding attempt is abandoned.

- 4 = Dead: no strategy is required because the adult is dead.

## See also

[`calc_foragecapture()`](https://nerc-ceh.github.io/seabORD/reference/calc_foragecapture.md)

## Examples

``` r
# Create a prey capture lookup table
tcapt <- calc_foragecapture(
  x0 = 260,
  h = 973,
  a = 4.369,
  maxt = 2160
)

# Determine the foraging strategy for a healthy bird
out <- calc_strategy(
  BM_condition = 0.95,
  BM_adult_abdn = 0.70,
  fmode = 1,
  Fg = 100,
  tf = 0.25,
  tcapt = tcapt,
  maxf = 10,
  ts = 1,
  tc = 8,
  tm = 2,
  ttotal = 24
)
```
