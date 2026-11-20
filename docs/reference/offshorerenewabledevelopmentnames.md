# offshorerenewabledevelopmentnames

Lookup table linking the short ORD codes used in `ordPar$include_ORDs`
(for example "NEART") to wind-farm names and EMODnet records.

## Usage

``` r
offshorerenewabledevelopmentnames
```

## Format

A data frame with 5 columns:

- code:

  Character: Short ORD code used by seabORD.

- name:

  Character: Wind-farm name.

- Emodnet_Site_Name:

  Character: Site name in the EMODnet wind farms dataset.

- Emodnet_PolygonID:

  Numeric: Polygon ID in the EMODnet wind farms dataset.

- Emodnet_Status:

  Character: Development status in the EMODnet wind farms dataset.

## Source

EMODnet Human Activities, wind farms.
