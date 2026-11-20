# Load example offshore renewable development polygons

Retrieves example offshore renewable development polygons supplied with
the package.

## Usage

``` r
get_example_ORDpoly(type = NULL)
```

## Arguments

- type:

  Character string specifying the example polygon dataset to load.
  Available options are:

  - `NULL`: Polygons for the standard scenario example.

  - `"dd"`: Polygons for the Whinnyfold distance-decay example.

## Value

An `sf` object containing example offshore renewable development
footprints.

## Details

The returned polygons represent the offshore renewable development
footprints used by the selected example workflow. They can be supplied
as the `ORDpoly` argument to
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

See the package input vignette for an example:
`vignette("C_KI_inputs", package = "seabORD")`.

## See also

[`get_example_ordPar()`](https://nerc-ceh.github.io/seabORD/reference/get_example_ordPar.md)
and
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

Other example data:
[`get_example_DBS_map()`](https://nerc-ceh.github.io/seabORD/reference/get_example_DBS_map.md),
[`get_example_fgc_3035()`](https://nerc-ceh.github.io/seabORD/reference/get_example_fgc_3035.md),
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
# Load polygons for the standard scenario example
ORDpoly <- get_example_ORDpoly()

# Load polygons for the distance-decay example
ORDpoly_dd <- get_example_ORDpoly("dd")

# Plot the polygon geometry
plot(sf::st_geometry(ORDpoly))

```
