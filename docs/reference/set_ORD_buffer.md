# Create buffer polygons around ORDs

Create buffer polygons around ORDs

## Usage

``` r
set_ORD_buffer(ORDpolys, bufferwidth = 2)
```

## Arguments

- ORDpolys:

  An `sf` polygon or multipolygon object containing ORD footprints.

- bufferwidth:

  Buffer width in kilometres.

## Value

An `sf` object containing buffered ORD polygons.
