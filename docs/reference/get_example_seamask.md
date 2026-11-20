# Load the example sea-mask raster

Reconstructs and returns the example sea-mask raster supplied with the
package.

## Usage

``` r
get_example_seamask()
```

## Value

A raster::RasterLayer object containing the example sea mask. The
returned raster layer is named `"seamask_3035"`.

## Details

The example sea mask is stored internally as a list containing:

- `metadata`: Raster dimensions, extent, and coordinate reference
  system.

- `matrix`: Raster cell values.

The raster is reconstructed from the stored metadata using the package's
internal raster-construction helper and is then populated with the
stored cell values.

The returned raster can be supplied as the `seamask` argument to
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

See the package input vignette for an example:
[`vignette("C_seabord_inputs", package = "seabORD")`](https://nerc-ceh.github.io/seabORD/articles/C_seabord_inputs.md).

## See also

[`get_example_brddata()`](https://nerc-ceh.github.io/seabORD/reference/get_example_brddata.md),
[`get_example_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/get_example_frgcompdata.md),
[`get_example_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fltdist_base.md),
and
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

Other example data:
[`get_example_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/get_example_DBS_map.md),
[`get_example_ORDpoly()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ORDpoly.md),
[`get_example_fgc_3035()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fgc_3035.md),
[`get_example_fltdist_base()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fltdist_base.md),
[`get_example_frgcompdata()`](https://nerc-ceh.github.io/seabORD/reference/get_example_frgcompdata.md),
[`get_example_modpar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_modpar.md),
[`get_example_ordPar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ordPar.md),
[`get_example_output()`](https://nerc-ceh.github.io/seabORD/reference/get_example_output.md),
[`get_example_par()`](https://nerc-ceh.github.io/seabORD/reference/get_example_par.md),
[`get_example_spadat1()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spadat1.md),
[`get_example_spadat2()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spadat2.md),
[`get_example_spdat()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spdat.md),
[`get_example_switches()`](https://nerc-ceh.github.io/seabORD/reference/get_example_switches.md)

## Examples

``` r
# Load the example sea mask
seamask <- get_example_seamask()

# Inspect the raster
seamask
#> class      : RasterLayer 
#> dimensions : 2200, 1577, 3469400  (nrow, ncol, ncell)
#> resolution : 1000, 1000  (x, y)
#> extent     : 2661966, 4238966, 2685159, 4885159  (xmin, xmax, ymin, ymax)
#> crs        : +proj=laea +lat_0=52 +lon_0=10 +x_0=4321000 +y_0=3210000 +ellps=GRS80 +units=m +no_defs 
#> source     : memory
#> names      : seamask_3035 
#> values     : 0, 0  (min, max)
#> 

# Plot the raster
raster::plot(seamask)

```
