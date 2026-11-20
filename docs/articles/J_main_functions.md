# Main functions

In this article the main functions that drive the seabORD core processes
are explained. Together, these functions determine how birds acquire
food, provision chicks, update their energetic state and ultimately
survive to the next breeding season. For a broader description of the
overall model structure, see the [seabORD
overview](https://nerc-ceh.github.io/seabORD/articles/B_seabord_overview.html).
The functions are grouped according to the stage of the simulation in
which they are used:

1.  ***Foraging and adult behaviour***

    Calculate the required amount taken to forage required amount
    (`calc_foragecapture`)

    Calculate the foraging strategy for the timestep (`calc_strategy`)

2.  ***Chick provisioning and growth***

    Parenting the chicks (`calc_chickcare`)

    Chick mortality as a result of adults not attending the nest
    (`calc_unattendmortality`)

    Chick mortality as a result of other causes (`calc_othermortality`)

    Puffin chick mortality from predation due to hunger
    (`calc_puffinmortality`)

3.  ***Adult state update***

    Body mass increase for adult birds (`calc_adultbmchange`)

    Calculate Daily Energy Requirement (`calc_adultdee`)

4.  ***Adult survival***

    Probability of winter survival (`calc_pSurvival`)

------------------------------------------------------------------------

## 1. Foraging and adult behaviour

### 1.1. Calculate the time taken to forage required amount (calc_foragecapture)

A detailed description of
[`calc_foragecapture()`](https://nerc-ceh.github.io/seabORD/reference/calc_foragecapture.md),
including its arguments and returned values, can be found in the
[function](https://nerc-ceh.github.io/seabORD_pkg/reference/calc_foragecapture.html)
[reference](https://nerc-ceh.github.io/seabORD/reference/calc_foragecapture.html).

This function estimates how quickly a bird can acquire prey while
foraging. Food intake depends on both prey availability and the bird’s
maximum feeding rate (Holling, 1959). The resulting capture curve is
then used throughout the model to determine how long individuals must
forage to meet their energetic demands.

#### Example 1 - prey capture (`captured_g`) through time (`tmin`)

The function returns a lookup table describing how prey (`captured_g`)
accumulates through time (`tmin`). Initially, prey is captured rapidly,
but the rate gradually slows as available prey becomes depleted. The
resulting curve can be used to estimate how long a bird must remain in a
foraging area to obtain a given amount of food.

![Cumulative prey captured increases rapidly at first and then levels
off as foraging time
increases.](J_main_functions_files/figure-html/unnamed-chunk-2-1.png)

#### Example 2 - effect of change in prey availability (`x0`)

Here we compare two foraging patches that differ only in prey
availability (`x0`). Birds feeding in richer patches obtain food more
rapidly and therefore require less time to meet their energetic
requirements.

![Cumulative prey capture through time under high and low prey
availability, showing faster food acquisition when prey availability is
high.](J_main_functions_files/figure-html/unnamed-chunk-3-1.png)

#### Example 3 - effect of change in maximum intake rate (a)

Maximum intake rate (`a`) can vary among individuals or species. Higher
values allow prey to be captured more quickly, leading to faster food
accumulation over time.

![Cumulative prey capture through time under higher and lower maximum
intake rates, showing faster accumulation at the higher intake
rate.](J_main_functions_files/figure-html/unnamed-chunk-4-1.png)

### 1.2. Calculate the foraging strategy for the timestep (calc_strategy)

A detailed description of
[`calc_strategy()`](https://nerc-ceh.github.io/seabORD/reference/calc_strategy.md),
including its arguments and returned values, can be found in the
[function
reference](https://nerc-ceh.github.io/seabORD/reference/calc_strategy.html).

This function determines how an adult bird allocates its time between
self-maintenance and chick provisioning during a single model time step.
The selected foraging strategy depends on energetic constraints,
available foraging time, and the bird’s current body condition. As
conditions deteriorate, adults may progressively reduce nest attendance
and eventually abandon the breeding attempt in order to prioritise their
own survival.

The function can return one of 4 outcomes:

“1” = Provisioning chick while maintaining attendance

“2” = Chick left unattended for part of the time step

“3” = Breeding attempt abandoned

“4” = Adult already dead

#### Example 1 - effect of change in food requirement (`Fg`)

As food requirements (`Fg`) increase, birds must undertake additional
foraging trips to meet demand (`n_trips`). Eventually, time constraints
may limit how much food can be collected, forcing changes in behaviour.

![Number of foraging trips required as the bird's food requirement
increases.](J_main_functions_files/figure-html/unnamed-chunk-5-1.png)

#### Example 2 - effect of change in body condition (`BM_condition`)

Adult body condition (`BM_condition`) influences the bird’s foraging
strategy (`feeding_mode`). Birds in poor condition are less able to
prioritise chick provisioning and may switch to reduced attendance or
nest abandonment at lower food requirements than birds in good
condition. As condition approaches the abandonment threshold
(`BM_adult_abdn`), the bird may switch to a nest-unattended or
nest-abandoned strategies (“1” = Provisioning chick while maintaining
attendance, “2” = Chick left unattended for part of the time step, “3” =
Breeding attempt abandoned).

![Foraging strategy across increasing food requirements for birds in
poor, moderate and excellent body
condition.](J_main_functions_files/figure-html/unnamed-chunk-6-1.png)

------------------------------------------------------------------------

## 2. Chick provisioning and growth

### 2.1. Parenting the chicks (calc_chickcare)

A detailed description of
[`calc_chickcare()`](https://nerc-ceh.github.io/seabORD/reference/calc_chickcare.md),
including its arguments and returned values, can be found in the
[function
reference](https://nerc-ceh.github.io/seabORD/reference/calc_chickcare.html).

This function updates chick growth, body condition, attendance status,
and survival during each model time step. Food delivered by **both
parents** contributes to chick growth, while reduced parental attendance
increases the amount of time chicks are left unattended. Together, these
processes determine whether chicks survive and continue developing.

#### Example 1 - reduced parental provisioning (`Ereq_intake`) lowers chick condition (`BM_condition`)

When parents deliver less food (`Ereq_intake`), chicks gain less mass
and their body condition (`BM_condition`) declines. This can increase
vulnerability to mortality processes later in the simulation.

![Chick body condition increases as the amount of food delivered by the
parents
increases.](J_main_functions_files/figure-html/unnamed-chunk-7-1.png)

### 2.2. Chick mortality as a result of adults not attending the nest (calc_unattendmortality)

A detailed description of
[`calc_unattendmortality()`](https://nerc-ceh.github.io/seabORD/reference/calc_unattendmortality.md),
including its arguments and returned values, can be found in the
[function
reference](https://nerc-ceh.github.io/seabORD/reference/calc_unattendmortality.html).

This function evaluates whether a chick dies because it has been left
unattended for too long. Mortality risk increases as unattended time
approaches the species-specific maximum duration that chicks can safely
remain alone.

#### Example 1 - Death by unattendance (`CoD`) vs unattended hours (`hrs`)

Here we simulate 1,000 chicks across a range of unattended durations.
The more hours the chicks are left unattended (`hrs`) the higher the
proportion of chicks that die because they are left unattended
(`CoD = unattended)`.

![Proportion of chicks dying from unattended mortality across increasing
numbers of hours left
unattended.](J_main_functions_files/figure-html/unnamed-chunk-8-1.png)

### 2.3. Chick mortality as a result of other causes (calc_othermortality)

A detailed description of
[`calc_othermortality()`](https://nerc-ceh.github.io/seabORD/reference/calc_othermortality.md),
including its arguments and returned values, can be found in the
[function
reference](https://nerc-ceh.github.io/seabORD/reference/calc_othermortality.html).

This function applies a background mortality risk that represents causes
of death not explicitly modelled elsewhere, such as adverse weather
events unrelated to chick condition.

#### Example 1 - Proportion of chicks dying of “other” causes (`CoD = other`)

In each simulation there is a small probability that mortality occurs
due to background causes. By repeating the calculation 1,000 times over
a 30-day period (`seasonlength`) we can visualise the proportion of
individuals that survive (`CoD = none`) versus those that die from other
causes (`CoD = other`).

![Number of simulated chicks surviving or dying from background causes
across one thousand
simulations.](J_main_functions_files/figure-html/unnamed-chunk-9-1.png)

### 2.4. Puffin chick mortality from predation due to hunger (calc_puffinmortality)

A detailed description of
[`calc_puffinmortality()`](https://nerc-ceh.github.io/seabORD/reference/calc_puffinmortality.md),
including its arguments and returned values, can be found in the
[function
reference](https://nerc-ceh.github.io/seabORD/reference/calc_puffinmortality.html).

This function applies an additional mortality risk to puffin chicks that
are in poor body condition. Chicks whose condition falls below a
species-specific threshold are considered vulnerable to predation.
Whether mortality occurs is determined stochastically, so identical
individuals may survive or die in different simulation runs. The
function therefore captures both the effect of chick condition on
predation risk and the inherent randomness of mortality events.

#### Example 1 - Proportion of chicks in poor condition (`BM_condition`) dying of “predation” (`CoD = killed`)

Puffin chicks in poor body condition (`BM_condition`) are assumed to be
more vulnerable to predation (`CoD = killed`). Mortality is stochastic,
meaning that two identical chicks may experience different outcomes due
to the random draw used by the model.

The example below simulates 1,000 chicks with the same body condition
and shows the frequency of survival (`CoD = none`) and predation events.

![Number of hungry puffin chicks surviving or being killed by predation
across one thousand
simulations.](J_main_functions_files/figure-html/unnamed-chunk-10-1.png)

#### Example 2 - Predation death declines (`CoD = killed`) as chick condition improves (`BM_condition`)

Chicks in poor condition are assumed to be more susceptible to predation
than chicks in good condition. Repeating the simulation 1,000 times
across a range of body conditions (`BM_condition`) reveals the
underlying relationship between condition and predation mortality risk
(`CoD = killed`).

![Proportion of puffin chicks killed by predation decreases as chick
body condition
improves.](J_main_functions_files/figure-html/unnamed-chunk-11-1.png)

------------------------------------------------------------------------

## 3. Adult state update

### 3.1. Body mass change for adult birds (calc_adultbmchange)

A detailed description of
[`calc_adultbmchange()`](https://nerc-ceh.github.io/seabORD/reference/calc_adultbmchange.md),
including its arguments and returned values, can be found in the
[function
reference](https://nerc-ceh.github.io/seabORD/reference/calc_adultbmchange.html).

All adult birds update their body mass at the end of each day based on
the energy they gain and expend foraging and in other activities. The
model we use is an expanded version of that used by (Daunt et al., 2008;
Wanless et al., 1997), which separates flight cost and foraging cost for
each adult to derive total energy expenditure.

``` math
 M_{d+1} = M_{d} +  [(Egain_{d} - DEE_{d})/ KG] 
```
where $`M_{d+1}`$ is the revised body mass, $`M_{d}`$ is the starting
body mass (in g), $`Egain_{d}`$ is the energy available from food (in
kJ), $`DEE_{d}`$ is the energy requirement (in kJ) and $`KG`$ is the
energy density of the adult bird tissue (kJ per gram).

#### Example 1 - Body mass (`BM_adult`) changes with energy intake (`Egain_adult`)

Within seabORD, adults stop foraging once their energetic requirement
has been met. Consequently, energy intake (`Egain_adult`) never exceeds
the daily energy requirement (`Ereq_adult`). Adult body mass can
therefore either remain stable or decline, depending on whether
sufficient food was acquired during the time step.

The figure shows how **body mass loss** decreases as food intake
increases. Under these example parameters, a bird that obtains no food
would lose approximately 40 g of body mass during the day.

![Adult body-mass loss decreases as energy intake approaches the bird's
daily energy
requirement.](J_main_functions_files/figure-html/unnamed-chunk-12-1.png)

### 3.2. Calculate Daily Energy Requirement (calc_adultdee)

A detailed description of
[`calc_adultdee()`](https://nerc-ceh.github.io/seabORD/reference/calc_adultdee.md),
including its arguments and returned values, can be found in the
[function
reference](https://nerc-ceh.github.io/seabORD/reference/calc_adultdee.html).

This function calculates the daily energy expenditure (DEE) of an adult
bird from its behaviour during the current time step. Time spent
nesting, flying, foraging, and resting at sea each contribute to overall
energetic costs. The resulting DEE becomes the bird’s energy requirement
(`Ereq_adult`) in the following time step.

Energy expenditure is calculated by combining the duration of each
activity with activity-specific energetic costs derived from published
studies (Croll & McLaren, 1993; Enstipp et al., 2006; Hilton et al.,
2000; Pennycuick, 1989). Additional energetic costs associated with
warming ingested prey are also included (Gremillet et al., 2003).

As a result, changes in behaviour, such as longer foraging trips or
increased flight time, directly influence the energetic requirements of
the bird in subsequent time steps.

The function calculates the **adult DEE** as follows:

- Energy spent on **nesting**:
  $`\frac{energynest \times colonyh}{daylength}`$

- Energy spent on **flying**:
  $`\frac{energyflight \times flyingh}{daylength}`$

- Energy spent on **foraging**:
  $`\frac{energyforage \times foragingh}{daylength}`$

- Energy spent **at sea**:
  $`\frac{energysearest \times atseah}{daylength}`$

- Energy spent on **warming**:
  $`\frac{energywarming \times daylength}{24}`$

And the final requirement as:

- Energy requirement (`Ereq_adult`):
  $`\frac{energy nesting  + energy flying + energy foraging + energy at sea + energy warming }{assim_eff}`$

#### Example 1 - Longer flying times (`flying_h`) increase food requirements (`Ereq_adult`)

Longer flights increase energetic expenditure, leading to higher food
requirements (`Ereq_adult`) in subsequent time steps. Offshore renewable
developments may increase commuting distances between colonies and
foraging grounds (barrier and displacement effects), therefore
increasing the food requirements of the birds.

![Adult daily energy requirement increases as the number of hours spent
flying
increases.](J_main_functions_files/figure-html/unnamed-chunk-13-1.png)

------------------------------------------------------------------------

## 4. Adult survival

### 4.1. Probability of winter survival (calc_pSurvival)

A detailed description of
[`calc_pSurvival()`](https://nerc-ceh.github.io/seabORD/reference/calc_pSurvival.md),
including its arguments and returned values, can be found in the
[function
reference](https://nerc-ceh.github.io/seabORD/reference/calc_pSurvival.html).

This function converts the final body mass of an adult bird into a
probability of surviving the season. Individuals ending the breeding
season in better condition are expected to have a higher probability of
surviving until the following year.

#### **Example 1 -** survival probability increases with adult body mass

The figure shows that survival probability generally increases with
adult body mass. However, the rate of increase differs among species
because each species has different mass-survival parameters. Around the
reference body mass (`bm`), survival is close to the species-specific
baseline survival (`basesurv`). As body mass increases above this value,
survival approaches one, whereas increasingly underweight individuals
experience progressively lower survival probabilities. Consequently,
poor foraging conditions during the breeding season can reduce winter
survival indirectly by lowering adult body mass. The parameter values
used below are illustrative and are not intended to represent any
specific seabORD species parameterisation.

![Estimated survival probability across adult body masses for
kittiwakes, puffins, guillemots and
razorbills.](J_main_functions_files/figure-html/unnamed-chunk-14-1.png)

------------------------------------------------------------------------

## References

Croll, D. A., & McLaren, E. (1993). Diving metabolism and
thermoregulation in common and thick-billed murres. *Journal of
Comparative Physiology B*, *163*(2), 160–166.
<https://doi.org/10.1007/BF00263602>

Daunt, F., Wanless, S., Greenstreet, S. P. R., Jensen, H., Hamer, K. C.,
& Harris, M. P. (2008). The impact of the sandeel fishery closure on
seabird food consumption, distribution, and productivity in the
northwestern north sea. *Canadian Journal of Fisheries and Aquatic
Sciences*, *65*(3), 362–381. <https://doi.org/10.1139/f07-164>

Enstipp, M. R., Daunt, F., Wanless, S., Humphreys, E., Hamer, K. C.,
Benvenuti, S., & Gremillet, D. (2006). Foraging energetics of north sea
birds confronted with fluctuating prey availability. In I. L. Boyd, S.
Wanless, & K. Camphuysen (Eds.), *Top predators in marine ecosystems:
Their role in monitoring and management* (pp. 191–210). Cambridge
University Press.

Gremillet, D., Wright, G., Lauder, A., Carss, D. N., & Wanless, S.
(2003). Modelling the daily food requirements of wintering great
cormorants: A bioenergetics tool for wildlife management. *Journal of
Applied Ecology*, *40*, 266–277.
<https://doi.org/10.1046/j.1365-2664.2003.00793.x>

Hilton, G. M., Ruxton, G. D., Furness, R. W., & Houston, D. C. (2000).
Optimal digestion strategies in seabirds: A modeling approach.
*Evolutionary Ecology Research*, *2*, 207–230.

Holling, C. S. (1959). Some characteristics of simple types of predation
and parasitism. *The Canadian Entomologist*, *91*(7), 385–398.
<https://doi.org/10.4039/Ent91385-7>

Pennycuick, C. J. (1989). *Bird flight performance: A practical
calculation manual*. Oxford University Press.

Wanless, S., Bacon, P. J., Harris, M. P., Webb, A. D., Greenstreet, S.
P. R., & Webb, A. (1997). Modelling environmental and energetic effects
on feeding performance and distribution of shags (phalacrocorax
aristotelis): Integrating telemetry, geographical information systems,
and modelling techniques. *ICES Journal of Marine Science*, *54*(4),
524–544. <https://doi.org/10.1006/jmsc.1997.0238>
