# ORDpoly_example_wfold

Footprints of Aberdeen Bay, Hywind Scotland and Kincardine wind farms,
used in the Whinnyfold distance-decay example. In the same projection as
the sea mask (EPSG:3035).

## Usage

``` r
ORDpoly_example_wfold
```

## Format

An `sf` tibble with the following columns:

- COUNTRY:

  Country.

- NAME:

  Wind-farm name.

- N_TURBINES:

  Number of turbines.

- POWER_MW:

  Installed capacity (MW).

- STATUS:

  Development status.

- YEAR:

  Year (commissioning or status year).

- COAST_DIST_M:

  Distance to the coast (m).

- AREA_SQKM:

  Area (km\\^2\\).

- NOTES:

  Notes.

- Shape_Length:

  Polygon perimeter (m).

- Shape_Area:

  Polygon area (m\\^2\\).

## Source

Wind-farm footprints prepared for the Whinnyfold example (EMODnet).
