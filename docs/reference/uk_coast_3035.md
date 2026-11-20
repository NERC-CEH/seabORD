# UK coastline in ETRS89 / LAEA Europe (EPSG:3035)

A simple-feature (`sf`) object containing the coastline of the United
Kingdom extracted from the CEF coastline dataset and reprojected to
ETRS89 / LAEA Europe (EPSG:3035).

## Usage

``` r
uk_coast_3035
```

## Format

An `sf` object containing coastline geometries for the United Kingdom.

## Source

Derived from the built-in `cef_coast_3035` coastline dataset.

## Details

The dataset is primarily intended for plotting and spatial operations
involving seabORD example rasters and model inputs, which are supplied
in the same projected coordinate reference system.

The dataset was derived from the built-in `cef_coast_3035` coastline
dataset by selecting features where `COUNTRY == "United Kingdom"` and
retaining the geometry in the ETRS89 / LAEA Europe projection
(EPSG:3035).

The dataset can be used to provide geographical context when plotting
seabORD spatial inputs and outputs, including:

- seamasks

- bird distribution maps (`BrdData`)

- competition distribution maps (`FrgCompData`)

- flight-distance rasters

- offshore renewable development (ORD) footprints

## Examples

``` r
# Load the coastline
data("uk_coast_3035", package = "seabORD")

# Inspect the object
uk_coast_3035
#> Simple feature collection with 1 feature and 2 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 3152007 ymin: 3095478 xmax: 3763415 ymax: 4239476
#> Projected CRS: +proj=laea +lat_0=52 +lon_0=10 +x_0=4321000 +y_0=3210000 +ellps=GRS80 +units=m +no_defs
#>          COUNTRY ID_0                       geometry
#> 1 United Kingdom  GBR MULTIPOLYGON (((3296703 357...

# Plot the coastline
plot(sf::st_geometry(uk_coast_3035))

```
