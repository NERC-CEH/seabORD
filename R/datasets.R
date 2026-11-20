# Dataset documentation for seabORD.
#
# Items to confirm before publishing (inferred from data-raw/ scripts):
#   - specieslist: sCRM_NAME meaning and the @source wording.
#   - spalist: all six Altnames.* descriptions are inferred from the column names.
#   - CEF_colsize_table: spacolsize unit (pairs or individuals).
#   - FlightGridcorrection_3035: how it was generated.
#   - ORDpoly_example_wfold: confirm owfpolys.shp has these columns, and the source.
#   - frgcompdata_example_dd: source of the Whinnyfold competition map.


#' Species list
#'
#' Information about the seabird species covered by seabORD and related
#' UKCEH tools, including English and scientific names, taxonomic codes and
#' two-letter codes.
#'
#' @format A data frame with the following 13 columns:
#' \describe{
#'   \item{ENGLISH_NAME}{Character: The English name of the species.}
#'   \item{LATIN_NAME}{Character: The scientific (Latin) name of the species.}
#'   \item{TAXA_CODE}{Character: A short taxonomic code for the species.}
#'   \item{SHORT_CODE}{Character: The two-letter species code used by seabORD (for example "KI").}
#'   \item{FIVE_LETTER}{Character: A five-letter shorthand for the species.}
#'   \item{BOU_NAME}{Character: The name of the species as recognised by the British Ornithologists' Union (BOU).}
#'   \item{sCRM_NAME}{Character: The species name as used in the stochastic collision risk model (sCRM).}
#'   \item{CEF}{Character: Indicates if the species is included in the Cumulative Effects Framework (CEF).}
#'   \item{iPCoD}{Character: Indicates if the species is included in iPCoD.}
#'   \item{SeabORD}{Character: Indicates if the species is included in seabORD.}
#'   \item{sCRM}{Character: Indicates if the species is included in the sCRM.}
#'   \item{NEPVA}{Character: Indicates if the species is included in NEPVA.}
#'   \item{DispMat}{Character: Indicates if dispersal matrices are available for the species.}
#' }
#' @source UKCEH seabird species lookup table.
#' @keywords internal
"specieslist"

#' SPA site list
#'
#' Information about Special Protection Areas (SPAs), including site codes
#' and site names, and the alternative names used to match each SPA across
#' other datasets.
#'
#' @format A data frame with the following 10 columns:
#' \describe{
#'   \item{SITE_CODE}{Character: A unique code identifying each SPA.}
#'   \item{SITE_NAME}{Character: The name of the SPA.}
#'   \item{CEF.include}{Character: Indicates if the site is included in the CEF (Y) or not (NA).}
#'   \item{Marine.only}{Character: Indicates if the site is classified as a marine-only SPA.}
#'   \item{Altnames.sufficient}{Character: Indicates whether the alternative names below are sufficient to match the SPA across datasets.}
#'   \item{Altnames.SPApolys}{Character: The name used for this SPA in the SPA boundary polygons.}
#'   \item{Altnames.SMP}{Character: The name used for this SPA in the Seabird Monitoring Programme (SMP) data.}
#'   \item{Altnames.Productivity}{Character: The name used for this SPA in the productivity data.}
#'   \item{Altnames.BDMPS}{Character: The name used for this SPA in the Biologically Defined Minimum Population Scales (BDMPS) data.}
#'   \item{Altnames.FR}{Character: The name used for this SPA in the foraging-range data.}
#' }
#' @source Cumulative Effects Framework (CEF) SPA lookup table.
#' @keywords internal
"spalist"


#' CEF colony size table
#'
#' Breeding colony sizes for each species at each SPA, taken from the
#' Cumulative Effects Framework (CEF).
#'
#' @format A data frame with 5 columns:
#' \describe{
#'   \item{X}{Numeric: Row index.}
#'   \item{species}{Character: The species code.}
#'   \item{site_codes}{Character: The unique code identifying each site.}
#'   \item{site_names}{Character: The name of the site.}
#'   \item{spacolsize}{Numeric: Colony size at the SPA, in breeding pairs.}
#' }
#' @source Cumulative Effects Framework (CEF).
#' @keywords internal
"CEF_colsize_table"


#' Energetics and prey data
#'
#' Species-specific parameters used by seabORD: body mass, mortality and
#' abandonment thresholds, time budgets, energetics, prey intake and
#' mass-survival parameters, and expected outcomes in poor, moderate and
#' good years. Descriptions follow the package metadata table in
#' \code{R/functions-transform2seabord.R}.
#'
#' @format A data frame with the following 38 columns:
#' \describe{
#' \item{Code}{Character: Two-letter species code.}
#' \item{Species}{Character: Species name.}
#' \item{BM_adult_mn}{Numeric: Initial adult body mass, mean (g).}
#' \item{BM_adult_sd}{Numeric: Initial adult body mass, standard deviation (g).}
#' \item{BM_adult_mortf}{Numeric: Critical body mass below which an adult is assumed dead (proportion of mean mass).}
#' \item{BM_adult_abdn}{Numeric: Critical body mass below which an adult abandons its chick (proportion of mean mass).}
#' \item{BM_chick_mn}{Numeric: Initial chick body mass, mean (g).}
#' \item{BM_chick_sd}{Numeric: Initial chick body mass, standard deviation (g).}
#' \item{BM_Chick_mortf}{Numeric: Critical body mass below which a chick dies (proportion of initial mass).}
#' \item{daylength}{Numeric: Number of hours per time step.}
#' \item{seasonlength}{Numeric: Number of time steps per season.}
#' \item{unattend_max_hrs}{Numeric: Time a chick can be left unattended before it is assumed to die from exposure or predation (hours).}
#' \item{adult_DEE_mn}{Numeric: Adult daily energy expenditure, mean (kJ).}
#' \item{adult_DEE_sd}{Numeric: Adult daily energy expenditure, standard deviation (kJ).}
#' \item{chick_DER}{Numeric: Chick daily energy requirement (kJ per day).}
#' \item{IR_max}{Numeric: Maximum prey intake rate (g per minute).}
#' \item{IR_half_a}{Numeric: Intake-rate half-saturation parameter a (scales the half-saturation constant with competition).}
#' \item{IR_half_b}{Numeric: Intake-rate half-saturation parameter b (exponent applied to the competition factor).}
#' \item{flight_msec}{Numeric: Average flight speed (metres per second).}
#' \item{assim_eff}{Numeric: Assimilation efficiency (proportion).}
#' \item{energy_prey}{Numeric: Energy gained from prey (kJ per gram).}
#' \item{energy_nest}{Numeric: Energy cost of nesting at the colony (kJ per day).}
#' \item{energy_flight}{Numeric: Energy cost of flight (kJ per day).}
#' \item{energy_searest}{Numeric: Energy cost of resting at sea (kJ per day).}
#' \item{energy_forage}{Numeric: Energy cost of foraging (kJ per day).}
#' \item{energy_warming}{Numeric: Energy cost of warming food (kJ per day).}
#' \item{chick_mass_a}{Numeric: Maximum chick mass gain per day (g).}
#' \item{adult_mass_KG}{Numeric: Energy density of adult bird tissue (kJ per gram).}
#' \item{beta}{Numeric: Mass-survival slope (parameter of the mass-survival relationship).}
#' \item{basesurv_poor}{Numeric: Baseline adult survival in poor years (mass-survival relationship).}
#' \item{basesurv_modr}{Numeric: Baseline adult survival in moderate years (mass-survival relationship).}
#' \item{basesurv_good}{Numeric: Baseline adult survival in good years (mass-survival relationship).}
#' \item{massloss_poor}{Numeric: Expected adult body mass loss in poor years (percent).}
#' \item{massloss_modr}{Numeric: Expected adult body mass loss in moderate years (percent).}
#' \item{massloss_good}{Numeric: Expected adult body mass loss in good years (percent).}
#' \item{chicksurv_poor}{Numeric: Expected chick survival in poor years (percent).}
#' \item{chicksurv_modr}{Numeric: Expected chick survival in moderate years (percent).}
#' \item{chicksurv_good}{Numeric: Expected chick survival in good years (percent).}
#' }
#' @source Species parameters compiled for seabORD from the publishedstudies cited in the model description.
#' @keywords internal
"energeticsandpreydata"

#' cef_coast_4326
#'
#' Coastline polygons for the UK and neighbouring countries from the
#' Cumulative Effects Framework (CEF), in WGS84 (EPSG:4326).
#'
#' @format An \code{sf} object with 3 columns:
#' \describe{
#'   \item{COUNTRY}{Character: Country name.}
#'   \item{ID_0}{Character: Country identifier.}
#'   \item{geometry}{sfc: Coastline (multi)polygon geometry.}
#' }
#' @source Cumulative Effects Framework (CEF) coastline dataset.
#' @keywords internal
"cef_coast_4326"

#' seamask_3035_example
#'
#' Example 1 km land/sea mask in ETRS89 / LAEA Europe (EPSG:3035). Sea
#' cells hold values and land cells are NA. Stored as a matrix plus
#' metadata and rebuilt with \code{get_example_seamask()}.
#'
#' @format A list with two elements, used to rebuild the raster in memory:
#' \describe{
#'   \item{matrix}{Matrix of cell values.}
#'   \item{metadata}{List of metadata: extent, resolution and CRS.}
#' }
#' @source Generated from "seamask_3035.tif".
#' @keywords internal
"seamask_3035_example"

#' Spatial coordinates of sites
#'
#' Coordinates and related attributes for each site (SPA): the colony
#' location, the nearest at-sea cell used as the start of flight paths, and
#' the matching cells on the model grid.
#'
#' @format A data frame with 23 columns:
#' \describe{
#'   \item{SITECODE}{Character: The unique code identifying each site.}
#'   \item{CEF.include}{Logical: Whether the site is included in the CEF.}
#'   \item{Marine}{Logical: Whether the site is marine.}
#'   \item{Longitude}{Numeric: The longitude of the site.}
#'   \item{Latitude}{Numeric: The latitude of the site.}
#'   \item{dat.CELLNO}{Numeric: The cell number for the site in the data.}
#'   \item{dat.ATSEA}{Logical: Whether the site is at sea.}
#'   \item{flt.LONG}{Numeric: The longitude of the flight path.}
#'   \item{flt.LAT}{Numeric: The latitude of the flight path.}
#'   \item{flt.CELLNO}{Numeric: The cell number for the flight path.}
#'   \item{flt.ATSEA}{Logical: Whether the flight path is at sea.}
#'   \item{flt.DIST}{Numeric: The distance of the flight path from the site.}
#'   \item{flt.near}{Logical: Whether the flight path is near the site.}
#'   \item{datxy.E}{Numeric: The x-coordinate in the East direction for the site.}
#'   \item{datxy.N}{Numeric: The y-coordinate in the North direction for the site.}
#'   \item{datxy.CELLNO}{Numeric: The cell number for the site in the XY grid.}
#'   \item{datxy.ATSEA}{Logical: Whether the XY coordinates are at sea.}
#'   \item{fltxy.E}{Numeric: The x-coordinate in the East direction for the flight path.}
#'   \item{fltxy.N}{Numeric: The y-coordinate in the North direction for the flight path.}
#'   \item{fltxy.CELLNO}{Numeric: The cell number for the flight path in the XY grid.}
#'   \item{fltxy.ATSEA}{Logical: Whether the XY coordinates for the flight path are at sea.}
#'   \item{fltxy.DIST}{Numeric: The distance of the flight path in XY space.}
#'   \item{fltxy.near}{Logical: Whether the flight path is near the site in XY space.}
#' }
#' @source Cumulative Effects Framework (CEF) SPA coordinate table.
#' @keywords internal
"spacoordinates"


#' UK9004171_bysea_3035
#'
#' Distance by sea (km) from the Forth Islands SPA (UK9004171) colony to
#' each sea cell, avoiding land, on the 1 km EPSG:3035 grid. Used as
#' \code{fltdist_base} in the GPS kittiwake example.
#'
#' @format A list with two elements, used to rebuild the raster in memory:
#' \describe{
#'   \item{matrix}{Matrix of cell values.}
#'   \item{metadata}{List of metadata: extent, resolution and CRS.}
#' }
#' @source Generated from "UK9004171_bysea_3035.tif".
#' @keywords internal
"UK9004171_bysea_3035"


#' FlightGridcorrection_3035: TransitionLayer object
#'
#' Geo-corrected transition layer for the 1 km EPSG:3035 grid, used by
#' \code{gdistance} to calculate distances by sea between grid cells.
#'
#' @format An object of class `TransitionLayer` with the following components:
#' \describe{
#'   \item{class}{The object is of class `TransitionLayer` from the gdistance package, holding transition values between neighbouring cells.}
#'   \item{dimensions}{Dimensions of the data grid: 2,200 rows and 1,577 columns, with a total of 3,469,400 cells.}
#'   \item{resolution}{The resolution of the raster grid: 1,000 metres in both x and y directions.}
#'   \item{extent}{Spatial extent of the grid defined by the minimum and maximum x and y coordinates. The extent is: xmin = 2661966, xmax = 4238966, ymin = 2685159, ymax = 4885159.}
#'   \item{crs}{Coordinate Reference System (CRS) used for the grid: `+proj=laea +lat_0=52 +lon_0=10 +x_0=4321000 +y_0=3210000 +ellps=GRS80 +units=m +no_defs`}
#'   \item{values}{Geo-corrected conductance values between neighbouring cells.}
#'   \item{matrix class}{The data is stored in a sparse matrix format (`dsTMatrix`), which is efficient for handling large datasets with a significant number of zero values.}
#' }
#' @source Generated with \code{gdistance::transition()} and
#'   \code{gdistance::geoCorrection()} on the seabORD sea mask.
#' @keywords internal
"FlightGridcorrection_3035"

#' offshorerenewabledevelopmentnames
#'
#' Lookup table linking the short ORD codes used in
#' \code{ordPar$include_ORDs} (for example "NEART") to wind-farm names and
#' EMODnet records.
#'
#' @format A data frame with 5 columns:
#' \describe{
#'   \item{code}{Character: Short ORD code used by seabORD.}
#'   \item{name}{Character: Wind-farm name.}
#'   \item{Emodnet_Site_Name}{Character: Site name in the EMODnet wind farms dataset.}
#'   \item{Emodnet_PolygonID}{Numeric: Polygon ID in the EMODnet wind farms dataset.}
#'   \item{Emodnet_Status}{Character: Development status in the EMODnet wind farms dataset.}
#' }
#' @source EMODnet Human Activities, wind farms.
#' @keywords internal
"offshorerenewabledevelopmentnames"

#' example_1_lists
#'
#' Example input lists for a scenario run of kittiwakes at the Forth
#' Islands SPA (UK9004171), GPS example.
#'
#' @format A named list with 4 elements:
#' \describe{
#'   \item{\code{switches}}{A list of run options (see Switches in the seabORD inputs article).}
#'   \item{\code{Par}}{A list of biological and simulation parameters.}
#'   \item{\code{modPar}}{A list of model environment, replicate and output settings.}
#'   \item{\code{ordPar}}{A list of ORD selection and buffer settings.}
#' }
#' @source Created in \code{data-raw/example_lists.R}.
#' @keywords internal
"example_1_lists"

#' BrdData_example
#'
#' Kittiwake bird-distribution map for the Forth Islands SPA, derived from
#' GPS tracking data. Stored as a matrix plus metadata and rebuilt with
#' \code{get_example_brddata()}.
#'
#' @format A list with two elements, used to rebuild the raster in memory:
#' \describe{
#'   \item{matrix}{Matrix of cell values.}
#'   \item{metadata}{List of metadata: extent, resolution and CRS.}
#' }
#' @source UKCEH GPS tracking data (SEANSE bird distribution maps).
#' @keywords internal
"BrdData_example"

#' frgcompdata_example
#'
#' Foraging-competition map for the Forth Islands example: the distribution
#' of kittiwakes from other colonies that may compete with the modelled
#' colony. Stored as a matrix plus metadata and rebuilt with
#' \code{get_example_frgcompdata()}.
#'
#' @format A list with two elements, used to rebuild the raster in memory:
#' \describe{
#'   \item{matrix}{Matrix of cell values.}
#'   \item{metadata}{List of metadata: extent, resolution and CRS.}
#' }
#' @source SEANSE competition maps.
#' @keywords internal
"frgcompdata_example"


#' ORDpoly_example
#'
#' Footprints of Inch Cape and Neart na Gaoithe wind farms, used in the GPS
#' kittiwake example. In the same projection as the sea mask (EPSG:3035).
#'
#' @format An \code{sf} tibble with the following columns from the EMODnet wind farms dataset:
#' \describe{
#'   \item{COUNTRY}{Country.}
#'   \item{NAME}{Wind-farm name.}
#'   \item{N_TURBINES}{Number of turbines.}
#'   \item{POWER_MW}{Installed capacity (MW).}
#'   \item{STATUS}{Development status.}
#'   \item{YEAR}{Year (commissioning or status year).}
#'   \item{COAST_DIST_M}{Distance to the coast (m).}
#'   \item{AREA_SQKM}{Area (km\eqn{^2}).}
#'   \item{NOTES}{Notes from EMODnet.}
#'   \item{Shape_Length}{Polygon perimeter (m).}
#'   \item{Shape_Area}{Polygon area (m\eqn{^2}).}
#' }
#' @source EMODnet Human Activities, wind farms (24 March 2022).
#' @keywords internal
"ORDpoly_example"

#' example_calibration_output
#'
#' Precomputed seabORD output from the Forth Islands kittiwake calibration
#' run, used in the examples.
#'
#' @format A named list, as returned by \code{seabord()}:
#' \describe{
#'   \item{switches}{List: the run options used.}
#'   \item{Parameters}{List: the biological and simulation parameters used.}
#'   \item{ordPar}{List: the ORD settings used.}
#'   \item{modPar}{List: the model environment and output settings used.}
#'   \item{thisRun}{List: run details stored for reproducibility.}
#'   \item{output_f0}{List of tibbles: flight metrics.}
#'   \item{output_c0}{List of tibbles: chick metrics.}
#'   \item{output_a0}{List of tibbles: adult metrics.}
#'   \item{output_y0}{List of tibbles: over-winter survival metrics.}
#'   \item{BirdFlightMap}{Raster: number of simulated visits to each foraging location.}
#' }
#' @source Generated by \code{seabord()} with \code{example_lists_calibration}.
#' @keywords internal
"example_calibration_output"


#' example_lists_calibration
#'
#' Example input lists for a calibration run (no ORDs) of kittiwakes at the
#' Forth Islands SPA (UK9004171), GPS example.
#'
#' @format A named list with 4 elements:
#' \describe{
#'   \item{\code{switches}}{A list of run options, with \code{modelmode = "calibration"}.}
#'   \item{\code{Par}}{A list of biological and simulation parameters.}
#'   \item{\code{modPar}}{A list of model environment, replicate and output settings.}
#'   \item{\code{ordPar}}{A list of ORD settings (empty for calibration).}
#' }
#' @source Created in \code{data-raw/example_lists_calibration.R}.
#' @keywords internal
"example_lists_calibration"


#' example_scenario_output
#'
#' Precomputed seabORD output from the Forth Islands kittiwake scenario run
#' with Inch Cape and Neart na Gaoithe, used in the examples.
#'
#' @format A named list, as returned by \code{seabord()}:
#' \describe{
#'   \item{switches}{List: the run options used.}
#'   \item{Parameters}{List: the biological and simulation parameters used.}
#'   \item{ordPar}{List: the ORD settings used.}
#'   \item{modPar}{List: the model environment and output settings used.}
#'   \item{thisRun}{List: run details stored for reproducibility.}
#'   \item{output_f0}{List of tibbles: flight metrics.}
#'   \item{output_c0}{List of tibbles: chick metrics.}
#'   \item{output_a0}{List of tibbles: adult metrics.}
#'   \item{output_y0}{List of tibbles: over-winter survival metrics.}
#'   \item{BirdFlightMap}{Raster: number of simulated visits to each foraging location.}
#'   \item{output_i0 to output_i5}{Lists of tibbles: impact metrics (see Interpreting the outputs).}
#' }
#' @source Generated by \code{seabord()} with \code{example_1_lists}.
#' @keywords internal
"example_scenario_output"


#' cef_coast_3035
#'
#' Coastline polygons for the UK and neighbouring countries from the
#' Cumulative Effects Framework (CEF), projected to ETRS89 / LAEA Europe
#' (EPSG:3035).
#'
#' @format An \code{sf} object with 3 columns:
#' \describe{
#'   \item{COUNTRY}{Character: Country name.}
#'   \item{ID_0}{Character: Country identifier.}
#'   \item{geometry}{sfc: Coastline (multi)polygon geometry.}
#' }
#' @source Cumulative Effects Framework (CEF) coastline dataset.
#' @keywords internal
"cef_coast_3035"


#' ORDpoly_example_wfold
#'
#' Footprints of Aberdeen Bay, Hywind Scotland and Kincardine wind farms,
#' used in the Whinnyfold distance-decay example. In the same projection as
#' the sea mask (EPSG:3035).
#'
#' @format An \code{sf} tibble with the following columns:
#' \describe{
#'   \item{COUNTRY}{Country.}
#'   \item{NAME}{Wind-farm name.}
#'   \item{N_TURBINES}{Number of turbines.}
#'   \item{POWER_MW}{Installed capacity (MW).}
#'   \item{STATUS}{Development status.}
#'   \item{YEAR}{Year (commissioning or status year).}
#'   \item{COAST_DIST_M}{Distance to the coast (m).}
#'   \item{AREA_SQKM}{Area (km\eqn{^2}).}
#'   \item{NOTES}{Notes.}
#'   \item{Shape_Length}{Polygon perimeter (m).}
#'   \item{Shape_Area}{Polygon area (m\eqn{^2}).}
#' }
#' @source Wind-farm footprints prepared for the Whinnyfold example (EMODnet).
#' @keywords internal
"ORDpoly_example_wfold"

#' DBS_map_example
#'
#' Example distance-by-sea raster for Whinnyfold without ORDs, as produced
#' by \code{calc_dist_restricted()} in the "Create a distance-decay map"
#' article.
#'
#' @format A list with two elements, used to rebuild the raster in memory:
#' \describe{
#'   \item{matrix}{Matrix of cell values.}
#'   \item{metadata}{List of metadata: extent, resolution and CRS.}
#' }
#' @source Generated from "DBS_map.tif".
#' @keywords internal
"DBS_map_example"

#' DBS_withORDs_example
#'
#' Example distance-by-sea raster for Whinnyfold with ORD footprints and
#' buffers treated as obstructions, as produced by
#' \code{calc_dist_restricted()} in the "Create a distance-decay map"
#' article.
#'
#' @format A list with two elements, used to rebuild the raster in memory:
#' \describe{
#'   \item{matrix}{Matrix of cell values.}
#'   \item{metadata}{List of metadata: extent, resolution and CRS.}
#' }
#' @source Generated from "DBS_withORDs.tif".
#' @keywords internal
"DBS_withORDs_example"


#' example_lists_calibration_dd
#'
#' Example input lists for a calibration run (no ORDs) of kittiwakes at
#' Buchan Ness to Collieston Coast SPA (UK9002491), Whinnyfold
#' distance-decay example.
#'
#' @format A named list with 4 elements:
#' \describe{
#'   \item{\code{switches}}{A list of run options, with \code{modelmode = "calibration"}.}
#'   \item{\code{Par}}{A list of biological and simulation parameters.}
#'   \item{\code{modPar}}{A list of model environment, replicate and output settings.}
#'   \item{\code{ordPar}}{A list of ORD settings (empty for calibration).}
#' }
#' @source Created in \code{data-raw/example_lists_calibration_dd.R}.
#' @keywords internal
"example_lists_calibration_dd"



#' UK9002491_bysea_3035
#'
#' Distance by sea (km) from the Buchan Ness to Collieston Coast SPA
#' (UK9002491) colony to each sea cell, avoiding land, on the 1 km EPSG:3035
#' grid. Used as \code{fltdist_base} in the distance-decay kittiwake example.
#'
#' @format A list with two elements, used to rebuild the raster in memory:
#' \describe{
#'   \item{matrix}{Matrix of cell values.}
#'   \item{metadata}{List of metadata: extent, resolution and CRS.}
#' }
#' @source Generated from "UK9002491_bysea_3035.tif".
#' @keywords internal
"UK9002491_bysea_3035"


#' BrdData_example_dd
#'
#' Kittiwake bird-distribution map for Whinnyfold, made with the
#' distance-decay function (see "Create a distance-decay map"). Stored as a
#' matrix plus metadata and rebuilt with \code{get_example_brddata("dd")}.
#'
#' @format A list with two elements, used to rebuild the raster in memory:
#' \describe{
#'   \item{matrix}{Matrix of cell values.}
#'   \item{metadata}{List of metadata: extent, resolution and CRS.}
#' }
#' @source Generated with \code{calc_birddensmap_dd_pinhalf()}.
#' @keywords internal
"BrdData_example_dd"

#' frgcompdata_example_dd
#'
#' Foraging-competition map for the Whinnyfold distance-decay example: the
#' distribution of kittiwakes from other colonies that may compete with the
#' modelled colony. Rebuilt with \code{get_example_frgcompdata("dd")}.
#'
#' @format A list with two elements, used to rebuild the raster in memory:
#' \describe{
#'   \item{matrix}{Matrix of cell values.}
#'   \item{metadata}{List of metadata: extent, resolution and CRS.}
#' }
#' @source SEANSE competition maps.
#' @keywords internal
"frgcompdata_example_dd"

#' example_lists_dd
#'
#' Example input lists for a scenario run of kittiwakes at Buchan Ness to
#' Collieston Coast SPA (UK9002491), Whinnyfold distance-decay example.
#'
#' @format A named list with 4 elements:
#' \describe{
#'   \item{\code{switches}}{A list of run options (see Switches in the seabORD inputs article).}
#'   \item{\code{Par}}{A list of biological and simulation parameters.}
#'   \item{\code{modPar}}{A list of model environment, replicate and output settings.}
#'   \item{\code{ordPar}}{A list of ORD selection and buffer settings.}
#' }
#' @source Created in \code{data-raw/example_lists_dd.R}.
#' @keywords internal
"example_lists_dd"

#' UK coastline in ETRS89 / LAEA Europe (EPSG:3035)
#'
#' A simple-feature (`sf`) object containing the coastline of the United
#' Kingdom extracted from the CEF coastline dataset and reprojected to
#' ETRS89 / LAEA Europe (EPSG:3035).
#'
#' The dataset is primarily intended for plotting and spatial operations
#' involving seabORD example rasters and model inputs, which are supplied
#' in the same projected coordinate reference system.
#'
#' @format An `sf` object containing coastline geometries for the United
#'   Kingdom.
#'
#' @details
#' The dataset was derived from the built-in `cef_coast_3035` coastline
#' dataset by selecting features where `COUNTRY == "United Kingdom"` and
#' retaining the geometry in the ETRS89 / LAEA Europe projection
#' (EPSG:3035).
#'
#' The dataset can be used to provide geographical context when plotting
#' seabORD spatial inputs and outputs, including:
#' \itemize{
#'   \item seamasks
#'   \item bird distribution maps (`BrdData`)
#'   \item competition distribution maps (`FrgCompData`)
#'   \item flight-distance rasters
#'   \item offshore renewable development (ORD) footprints
#' }
#'
#' @examples
#' # Load the coastline
#' data("uk_coast_3035", package = "seabORD")
#'
#' # Inspect the object
#' uk_coast_3035
#'
#' # Plot the coastline
#' plot(sf::st_geometry(uk_coast_3035))
#'
#' @source Derived from the built-in `cef_coast_3035` coastline dataset.
#' @keywords internal
"uk_coast_3035"
