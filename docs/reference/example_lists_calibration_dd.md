# example_lists_calibration_dd

Example input lists for a calibration run (no ORDs) of kittiwakes at
Buchan Ness to Collieston Coast SPA (UK9002491), Whinnyfold
distance-decay example.

## Usage

``` r
example_lists_calibration_dd
```

## Format

A named list with 4 elements:

- `switches`:

  A list of run options, with `modelmode = "calibration"`.

- `Par`:

  A list of biological and simulation parameters.

- `modPar`:

  A list of model environment, replicate and output settings.

- `ordPar`:

  A list of ORD settings (empty for calibration).

## Source

Created in `data-raw/example_lists_calibration_dd.R`.
