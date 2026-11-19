# Load example SPA coordinate data

Retrieves the coordinates and associated information for the Special
Protection Area used by the selected example workflow.

## Usage

``` r
get_example_spadat1(type = NULL)
```

## Arguments

- type:

  Character string specifying the example workflow to load. Available
  options are:

  - `NULL`: Standard example using site code `"UK9004171"`.

  - `"dd"`: Density-dependence example using site code `"UK9002491"`.

## Value

A tibble containing the coordinate record for the SPA used by the
selected example workflow.

## Details

The function filters the package's built-in `spacoordinates` dataset to
return the SPA coordinate record associated with the selected workflow.

The returned object can be supplied as the `spadat1` argument to
[`seabord()`](https://nerc-ceh.github.io/seabORD/reference/seabord.md).

Corresponding SPA designation information can be retrieved with
[`get_example_spadat2()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spadat2.md).

See the package input vignette for an example:
`vignette("C_KI_inputs", package = "seabORD")`.

## See also

[`get_example_spadat2()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spadat2.md)
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
[`get_example_seamask()`](https://nerc-ceh.github.io/seabORD/reference/get_example_seamask.md),
[`get_example_spadat2()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spadat2.md),
[`get_example_spdat()`](https://nerc-ceh.github.io/seabORD/reference/get_example_spdat.md),
[`get_example_switches()`](https://nerc-ceh.github.io/seabORD/reference/get_example_switches.md)

## Examples

``` r
# Load coordinates for the standard example SPA
spadat1 <- get_example_spadat1()

# Load coordinates for the density-dependence example SPA
spadat1_dd <- get_example_spadat1("dd")
```
