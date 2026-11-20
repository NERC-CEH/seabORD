# example_lists_calibration

Example input lists for a calibration run (no ORDs) of kittiwakes at the
Forth Islands SPA (UK9004171), GPS example.

## Usage

``` r
example_lists_calibration
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

Created in `data-raw/example_lists_calibration.R`.
