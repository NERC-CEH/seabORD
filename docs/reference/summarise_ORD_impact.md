# Summarise the impact of ORDs on a distance-decay map

Calculates the percentage of a distance-decay (DD) map contained within
ORD footprints and buffer zones, together with the percentage affected
by ORD barrier ("shadow") effects.

## Usage

``` r
summarise_ORD_impact(
  DD_map,
  ORDpolys_with_buffer,
  DBS_map,
  DBS_withORDs,
  smalltol = 0.01
)
```

## Arguments

- DD_map:

  A normalised distance-decay `RasterLayer`.

- ORDpolys_with_buffer:

  An `sf` polygon object containing ORD footprints and associated buffer
  zones.

- DBS_map:

  A `RasterLayer` containing Distance By Sea values calculated without
  ORDs.

- DBS_withORDs:

  A `RasterLayer` containing Distance By Sea values calculated with ORDs
  present.

- smalltol:

  Numeric threshold used to identify meaningful increases in Distance By
  Sea. Defaults to `0.01`.

## Value

A data frame with two columns:

- pc_in_ORD_plus_buffer:

  Percentage of the DD map contained within ORD footprints and their
  buffer zones.

- pc_in_ORD_shadow:

  Percentage of the DD map located within areas where Distance By Sea
  increases by more than `smalltol` due to the presence of ORDs.

## Details

If the distance-decay map is normalised to sum to one, both outputs can
be interpreted directly as percentages of the total density
distribution.

## Examples

``` r
if (FALSE) { # \dontrun{
summarise_ORD_impact(
  DD_map = DD_map,
  ORDpolys_with_buffer = ORDpolys_with_buffer,
  DBS_map = DBS_map,
  DBS_withORDs = DBS_withORDs
)
} # }
```
