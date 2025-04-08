#' Load cbb team rosters
#'
#' @description Pull in rosters for college basketball teams for a given season
#'
#' @param seasons an integer of seasons to fetch data for. Defaults to the most recent season. Pass in `TRUE` to fetch all seasons.
#'
#' @return a dataframe of rosters for college basketball teams in the specified season(s).
#'
#' @examples
#' \donttest{
#' load_rosters()
#'
#' load_rosters(2024)
#'
#' load_rosters(TRUE)
#' }
#'
#' @export
load_rosters <- function(seasons = most_recent_season()) {
  seasons <- check_seasons_legit(seasons)
  urls <- glue::glue(
    "{RELEASE_URL}/rosters/rosters_{seasons}.rds"
  )
  out <- nflreadr::load_from_url(urls, seasons = seasons)
  return(out)
}
