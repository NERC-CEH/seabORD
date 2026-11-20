# SPA site list

Information about Special Protection Areas (SPAs), including site codes
and site names, and the alternative names used to match each SPA across
other datasets.

## Usage

``` r
spalist
```

## Format

A data frame with the following 10 columns:

- SITE_CODE:

  Character: A unique code identifying each SPA.

- SITE_NAME:

  Character: The name of the SPA.

- CEF.include:

  Character: Indicates if the site is included in the CEF (Y) or not
  (NA).

- Marine.only:

  Character: Indicates if the site is classified as a marine-only SPA.

- Altnames.sufficient:

  Character: Indicates whether the alternative names below are
  sufficient to match the SPA across datasets.

- Altnames.SPApolys:

  Character: The name used for this SPA in the SPA boundary polygons.

- Altnames.SMP:

  Character: The name used for this SPA in the Seabird Monitoring
  Programme (SMP) data.

- Altnames.Productivity:

  Character: The name used for this SPA in the productivity data.

- Altnames.BDMPS:

  Character: The name used for this SPA in the Biologically Defined
  Minimum Population Scales (BDMPS) data.

- Altnames.FR:

  Character: The name used for this SPA in the foraging-range data.

## Source

Cumulative Effects Framework (CEF) SPA lookup table.
