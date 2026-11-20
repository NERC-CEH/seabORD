# Check calibration input consistency

Verifies that the number of calibration replicates matches the number of
prey values supplied in `Par$Pmedian`.

## Usage

``` r
check_calibration_inputs(Par, modPar)
```

## Arguments

- Par:

  A list of seabORD parameters containing `Pmedian`.

- modPar:

  A list of model parameters containing `Nreplicates`.

## Value

Invisibly returns `TRUE` if the inputs are valid.

## Details

For calibration runs, the number of replicates specified in
`modPar$Nreplicates` should equal the number of prey values supplied in
`Par$Pmedian`. A mismatch may lead to simulation failures or unexpected
behaviour.

## Examples

``` r
check_calibration_inputs(
  Par = Par_example,
  modPar = modPar_example
)
#> Error: object 'Par_example' not found
```
