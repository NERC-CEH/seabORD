# DBS_withORDs_example

Example distance-by-sea raster for Whinnyfold with ORD footprints and
buffers treated as obstructions, as produced by
[`calc_dist_restricted()`](https://nerc-ceh.github.io/seabORD/reference/calc_dist_restricted.md)
in the "Create a distance-decay map" article.

## Usage

``` r
DBS_withORDs_example
```

## Format

A list with two elements, used to rebuild the raster in memory:

- matrix:

  Matrix of cell values.

- metadata:

  List of metadata: extent, resolution and CRS.

## Source

Generated from "DBS_withORDs.tif".
