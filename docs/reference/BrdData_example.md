# BrdData_example

Kittiwake bird-distribution map for the Forth Islands SPA, derived from
GPS tracking data. Stored as a matrix plus metadata and rebuilt with
[`get_example_brddata()`](https://nerc-ceh.github.io/seabORD/reference/get_example_brddata.md).

## Usage

``` r
BrdData_example
```

## Format

A list with two elements, used to rebuild the raster in memory:

- matrix:

  Matrix of cell values.

- metadata:

  List of metadata: extent, resolution and CRS.

## Source

UKCEH GPS tracking data (SEANSE bird distribution maps).
