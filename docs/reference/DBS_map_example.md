# DBS_map_example

Example distance-by-sea raster for Whinnyfold without ORDs, as produced
by
[`calc_dist_restricted()`](https://nerc-ceh.github.io/seabORD/reference/calc_dist_restricted.md)
in the "Create a distance-decay map" article.

## Usage

``` r
DBS_map_example
```

## Format

A list with two elements, used to rebuild the raster in memory:

- matrix:

  Matrix of cell values.

- metadata:

  List of metadata: extent, resolution and CRS.

## Source

Generated from "DBS_map.tif".
