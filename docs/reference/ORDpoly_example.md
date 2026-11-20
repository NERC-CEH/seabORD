# ORDpoly_example

Footprints of Inch Cape and Neart na Gaoithe wind farms, used in the GPS
kittiwake example. In the same projection as the sea mask (EPSG:3035).

## Usage

``` r
ORDpoly_example
```

## Format

An `sf` tibble with the following columns from the EMODnet wind farms
dataset:

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

  Notes from EMODnet.

- Shape_Length:

  Polygon perimeter (m).

- Shape_Area:

  Polygon area (m\\^2\\).

## Source

EMODnet Human Activities, wind farms (24 March 2022).
