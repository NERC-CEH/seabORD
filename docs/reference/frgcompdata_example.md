# frgcompdata_example

Foraging-competition map for the Forth Islands example: the distribution
of kittiwakes from other colonies that may compete with the modelled
colony. Stored as a matrix plus metadata and rebuilt with
[`get_example_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/get_example_frgcompdata.md).

## Usage

``` r
frgcompdata_example
```

## Format

A list with two elements, used to rebuild the raster in memory:

- matrix:

  Matrix of cell values.

- metadata:

  List of metadata: extent, resolution and CRS.

## Source

SEANSE competition maps.
