# Load species-specific data

Retrieves species-specific energetics and prey data from the
`energeticsandpreydata` dataset included with the package.

## Usage

``` r
get_spdat(species_code = "KI")
```

## Arguments

- species_code:

  Character string giving the species code of interest. Supported values
  are:

  - `"KI"`: Black-legged Kittiwake

  - `"GU"`: Common Guillemot

  - `"RA"`: Razorbill

  - `"PU"`: Atlantic Puffin

  Defaults to `"KI"`.

## Value

A data frame containing the species-specific energetics and prey
parameters used by seabORD. If the supplied `species_code` is not
present in the dataset, an empty data frame is returned.

## Details

This function provides convenient access to the built-in species
parameter dataset used by seabORD. Species-specific data for all four
seabird species modelled by the package are stored in
`energeticsandpreydata`.

## Examples

``` r
# Black-legged Kittiwake
ki_data <- get_spdat("KI")

# Common Guillemot
gu_data <- get_spdat("GU")

# Razorbill
ra_data <- get_spdat("RA")

# Atlantic Puffin
pu_data <- get_spdat("PU")
```
