% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/climate_forecast.R
\name{climate_forecast}
\alias{climate_forecast}
\title{Retrieve climate change forecasts from the Open-Meteo API}
\usage{
climate_forecast(
  location,
  start,
  end,
  daily = NULL,
  response_units = NULL,
  model = NULL,
  downscaling = TRUE,
  timezone = "auto"
)
}
\arguments{
\item{location}{Required. The location for which data will be retrieved.
Supplied as either a \code{c(latitude,longitude)} WGS84 coordinate pair or a
place name string (with co-ordinates obtained via \code{\link[=geocode]{geocode()}}).}

\item{start, end}{Required. Future start and end dates in ISO 8601 (e.g.
"2020-12-31").}

\item{daily}{Required. A weather variable accepted by the API, or list
thereof. See details below.}

\item{response_units}{Supply to convert temperature, windspeed, or
precipitation units. This defaults to: \verb{list(temperature_unit = "celsius",}
\verb{windspeed_unit = "kmh", precipitation_unit = "mm")}}

\item{model}{Supply to specify a climate model for forecasted values (refer
to the API documentation).}

\item{downscaling}{Enable (default) or disable statistical downscaling with ERA5-Land (10 km).}

\item{timezone}{specify timezone for time data as a string, i.e.
"australia/sydney" (defaults to "auto", the timezone local to the specified
\code{location}).}
}
\value{
Requested climate forecast data for the given location and time
period, as a tidy tibble.
}
\description{
\code{climate_forecast()} calls the Open-Meteo Climate Change Forecast API to
obtain long-range weather projections from a range of climate models.

Refer to the API documentation at:
\url{https://open-meteo.com/en/docs/climate-api}
}
\details{
You will need to specify at least one weather variable, such as temperature,
that you want projected forecasts for. The models currently only provide
weather data aggregated at \emph{daily} intervals. Multiple variables can be
supplied as a list.

Example daily climate forecast variables include:\tabular{ll}{
   \strong{Variable} \tab \strong{Description} \cr
   \code{temperature_2m_max} \tab Maximum daily air temperature at 2 meters above ground \cr
   \code{precipitation_sum} \tab Sum of rain, showers, and snow over the preceding day \cr
   \code{windspeed_10m_max} \tab Maximum daily wind speed at 10 meters above ground \cr
}


Different climate change models can be specified, which may differ in the
weather variables predicted. Models include:\tabular{lll}{
   \strong{Model} \tab \strong{Origin} \tab \strong{Resolution} \cr
   \code{EC_Earth3P_HR} \tab Europe \tab 29 km \cr
   \code{FGOALS_f3_H} \tab China \tab 28 km \cr
   \code{MRI_AGCM3_2_S} \tab Japan \tab 20 km \cr
}


For all models and their available fields, refer to the full documentation
for the climate API at: \url{https://open-meteo.com/en/docs/climate-api}
}
\examples{
\donttest{
# Obtain projected precipitation for the North Pole in 2050
climate_forecast(c(90, 0),
  "2050-06-01", "2050-07-01",
  daily = "precipitation_sum"
)

# Obtain projected temperatures for Madrid in 2050 in Fahrenheit, with ESMI1
climate_forecast("Madrid",
  "2050-06-01", "2050-07-01",
  daily = "temperature_2m_max",
  model = "MPI_ESM1_2_XR",
  response_units = list(temperature_unit = "fahrenheit")
)
}
}
