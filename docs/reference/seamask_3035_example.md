# seamask_3035_example

Example 1 km land/sea mask in ETRS89 / LAEA Europe (EPSG:3035). Sea
cells hold values and land cells are NA. Stored as a matrix plus
metadata and rebuilt with
[`get_example_seamask()`](https://nerc-ceh.github.io/seabORD/reference/get_example_seamask.md).

## Usage

``` r
seamask_3035_example
```

## Format

A list with two elements, used to rebuild the raster in memory:

- matrix:

  Matrix of cell values.

- metadata:

  List of metadata: extent, resolution and CRS.

## Source

Generated from "seamask_3035.tif".
