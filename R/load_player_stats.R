#' Load cbb player stats
#'
#' @description Pull in statistics aggregated by player for a given season.
#'
#' @param seasons an integer of seasons to fetch data for. Defaults to the most recent season. Pass in `TRUE` to fetch all seasons.
#'
#' @return a dataframe of player statistics for college basketball players
#'
#' @examples
#' \donttest{
#' load_player_stats()
#'
#' load_player_stats(2024)
#'
#' load_player_stats(TRUE)
#' }
#'
#' @export
load_player_stats <- function(seasons = most_recent_season()) {
  seasons <- check_seasons_legit(seasons)
  urls <- glue::glue(
    "{RELEASE_URL}/player_stats/player_stats_{seasons}.rds"
  )
  out <- nflreadr::load_from_url(urls, seasons = seasons)
  return(out)
}
