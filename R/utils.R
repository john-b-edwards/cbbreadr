RELEASE_URL <- "https://github.com/john-b-edwards/cbbd-data/releases/download"

#' get the most recent CBB season
#'
#' @description For a given date (defaults to the system date), returns the most recent or "current" college basketball season.
#'
#' @param date the date to obtain the most recent season of. Defaults to the system date.
#'
#' @return the most recent CBB season as an integer
#'
#' @examples
#' \donttest{
#' most_recent_season()
#'
#' # up to september, will be recorded as 2022
#' most_recent_season("2022-09-01")
#'
#' # then will swap over to 2023 when we hit october
#' most_recent_season("2022-10-01")
#' }
#'
#' @export
most_recent_season <- function(date = Sys.Date()) {
  if (as.integer(format(Sys.Date(), "%m")) < 10) {
    return(as.integer(format(Sys.Date(), "%Y")))
  } else {
    return(as.integer(format(Sys.Date(), "%Y")) + 1)
  }
}

# helper function to check that seasons are legit for a given loader and cast `TRUE` to all seasons
check_seasons_legit <- function(
  seasons,
  first_season = 2003,
  last_season = most_recent_season()
) {
  if (isTRUE(seasons)) seasons <- first_season:last_season
  stopifnot(
    is.numeric(seasons),
    seasons >= first_season,
    seasons <= last_season
  )
  return(seasons)
}
