# Run a seabORD simulation

A model to estimate the population consequences of displacement from
proposed offshore renewable energy developments for key seabird species.
The function performs one or more stochastic simulation replicates and
returns summaries of adult, chick, flight and survival metrics.

## Usage

``` r
seabord(
  Par,
  modPar,
  ordPar,
  switches,
  seamask,
  spadat1,
  spadat2,
  spdat,
  BrdData,
  FrgCompData,
  fltdist_base,
  FlightGridcorrection,
  ORDpoly
)
```

## Arguments

- Par:

  List - The main parameters controlling/defining this run

- modPar:

  List - Parameters relating to the model mode and computer environment

- ordPar:

  List - Input parameters relating to the ORDs

- switches:

  List - A set of switches/flags used to control optional features of
  the run

- seamask:

  Raster - land/sea grid, 1km expected.

- spadat1:

  Tibble - Information relating to the colony/SPA

- spadat2:

  Tibble - Information relating to the colony/SPA

- spdat:

  Dataframe - Species-specific parameters

- BrdData:

  Raster - Bird distribution map - derived from GPS data or failing
  that, a distance-decay model

- FrgCompData:

  Raster - Competition distribution map - derived from GPS data or
  failing that, a distance-decay model

- fltdist_base:

  Raster - Flight distance by sea, without ORDs. See user guide for
  details.

- FlightGridcorrection:

  Raster - Flight distance transition layer (gdistance) corrected for
  distortions relating to the CRS

- ORDpoly:

  Multipolygon (simple features) - The ORD footprints

## Value

A list containing tibbles

## Details

Before running this function, all model inputs must be prepared. A
complete description of the required input objects is provided in:
[`vignette("C_seabord_inputs", package = "seabORD")`](https://nerc-ceh.github.io/seabORD/articles/C_seabord_inputs.md)
