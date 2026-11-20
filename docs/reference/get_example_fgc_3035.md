# Load the example flight-grid correction object

Retrieves the example flight-grid correction transition object supplied
with the package.

## Usage

``` r
get_example_fgc_3035()
```

## Value

A `TransitionLayer` containing the example flight-grid correction values
in the ETRS89-extended / LAEA Europe coordinate reference system
(EPSG:3035).

## Details

The flight-grid correction object accounts for the additional distance
associated with movement across the raster grid compared with direct
straight-line movement. It is used when calculating distance-by-sea
routes for seabORD simulations.

See the package input vignette for an example:
[`vignette("C_seabord_inputs", package = "seabORD")`](https://nerc-ceh.github.io/seabORD/articles/C_seabord_inputs.md).

## See also

[`get_example_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fltdist_base.md),
[`get_example_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/get_example_DBS_map.md),
and
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

Other example data:
[`get_example_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/get_example_DBS_map.md),
[`get_example_ORDpoly()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ORDpoly.md),
[`get_example_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fltdist_base.md),
[`get_example_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/get_example_frgcompdata.md),
[`get_example_modpar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_modpar.md),
[`get_example_ordPar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ordPar.md),
[`get_example_output()`](https://nerc-ceh.github.io/seabORD/reference/get_example_output.md),
[`get_example_par()`](https://nerc-ceh.github.io/seabORD/reference/get_example_par.md),
[`get_example_seamask()`](https://nerc-ceh.github.io/seabORD/reference/get_example_seamask.md),
[`get_example_spadat1()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spadat1.md),
[`get_example_spadat2()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spadat2.md),
[`get_example_spdat()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spdat.md),
[`get_example_switches()`](https://nerc-ceh.github.io/seabORD/reference/get_example_switches.md)

## Examples

``` r
# Load the example flight-grid correction object
fgc <- get_example_fgc_3035()

# Inspect the object
fgc
#> class      : TransitionLayer 
#> dimensions : 2200, 1577, 3469400  (nrow, ncol, ncell)
#> resolution : 1000, 1000  (x, y)
#> extent     : 2661966, 4238966, 2685159, 4885159  (xmin, xmax, ymin, ymax)
#> crs        : +proj=laea +lat_0=52 +lon_0=10 +x_0=4321000 +y_0=3210000 +ellps=GRS80 +units=m +no_defs 
#> values      : conductance 
#> matrix class: dsTMatrix 
```
