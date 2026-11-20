# BrdData_example_dd

Kittiwake bird-distribution map for Whinnyfold, made with the
distance-decay function (see "Create a distance-decay map"). Stored as a
matrix plus metadata and rebuilt with `get_example_brddata("dd")`.

## Usage

``` r
BrdData_example_dd
```

## Format

A list with two elements, used to rebuild the raster in memory:

- matrix:

  Matrix of cell values.

- metadata:

  List of metadata: extent, resolution and CRS.

## Source

Generated with
[`calc_birddensmap_dd_pinhalf()`](https://nerc-ceh.github.io/seabORD/reference/calc_birddensmap_dd_pinhalf.md).
