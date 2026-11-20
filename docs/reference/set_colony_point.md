# Create a colony location point

Creates an `sf` point object from longitude and latitude coordinates and
projects it to ETRS89 / LAEA Europe (EPSG:3035).

## Usage

``` r
set_colony_point(lon, lat)
```

## Arguments

- lon:

  Longitude in decimal degrees (WGS84).

- lat:

  Latitude in decimal degrees (WGS84).

## Value

An `sf` point object in EPSG:3035.

## Examples

``` r
# Whinnyfold colony
colony <- set_colony_point(
  lon = -1.85849,
  lat = 57.388807
)

colony
#> Simple feature collection with 1 feature and 0 fields
#> Geometry type: POINT
#> Dimension:     XY
#> Bounding box:  xmin: 3610821 ymin: 3868663 xmax: 3610821 ymax: 3868663
#> Projected CRS: ETRS89-extended / LAEA Europe
#>                  geometry
#> 1 POINT (3610821 3868663)
```
