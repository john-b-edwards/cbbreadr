#' Load cbb teams stats
#'
#' @description Pull in statistics aggregated by team for a given season.
#'
#' @param seasons an integer of seasons to fetch data for. Defaults to the most recent season. Pass in `TRUE` to fetch all seasons.
#'
#' @return a dataframe of team statistics for college basketball teams.
#'
#' @examples
#' \donttest{
#' load_team_stats()
#'
#' load_team_stats(2024)
#'
#' load_team_stats(TRUE)
#' }
#'
#' @export
load_team_stats <- function(seasons = most_recent_season()) {
  seasons <- check_seasons_legit(seasons)
  urls <- glue::glue(
    "{RELEASE_URL}/team_stats/team_stats_{seasons}.rds"
  )
  out <- nflreadr::load_from_url(urls, seasons = seasons)
  return(out)
}
