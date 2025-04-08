#' Load cbb teams box score stats
#'
#' @description Pull in statistics aggregated by team and game for a given season.
#'
#' @param seasons an integer of seasons to fetch data for. Defaults to the most recent season. Pass in `TRUE` to fetch all seasons.
#'
#' @return a dataframe of team box scores.
#'
#' @examples
#' \donttest{
#' load_team_box_scores()
#'
#' load_team_box_scores(2024)
#'
#' load_team_box_scores(TRUE)
#' }
#'
#' @export
load_team_box_scores <- function(seasons = most_recent_season()) {
  seasons <- check_seasons_legit(seasons)
  urls <- glue::glue(
    "{RELEASE_URL}/team_box_scores/team_box_scores_{seasons}.rds"
  )
  out <- nflreadr::load_from_url(urls, seasons = seasons)
  return(out)
}
