# Calculate the percentage of a DD map within ORD buffer zones

Calculates the proportion of a distance-decay (DD) map that falls within
Offshore Renewable Development (ORD) footprints and their associated
buffer zones.

## Usage

``` r
calc_pc_in_ORD_buffer(DD_map, ORDpolys_with_buffer)
```

## Arguments

- DD_map:

  A normalised distance-decay `RasterLayer`.

- ORDpolys_with_buffer:

  An `sf` polygon object containing ORD footprints and buffer zones.

## Value

A numeric value giving the percentage of the DD map contained within the
supplied ORD polygons and buffers.

## Details

The DD map is masked using the supplied polygons and the values
remaining within the masked area are summed.

If the DD map is normalised to sum to one, the returned value can be
interpreted as the percentage of total density contained within the ORD
footprints and their buffers.

## Examples

``` r
if (FALSE) { # \dontrun{
ORDpolys_with_buffer <- set_ORD_buffer(
  ORDpolys,
  bufferwidth = 2
)

calc_pc_in_ORD_buffer(
  DD_map,
  ORDpolys_with_buffer
)
} # }
```
