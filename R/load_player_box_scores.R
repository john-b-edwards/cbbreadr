#' Load cbb player box score stats
#'
#' @description Pull in statistics aggregated by player and game for a given season.
#'
#' @param seasons an integer of seasons to fetch data for. Defaults to the most recent season. Pass in `TRUE` to fetch all seasons.
#'
#' @return a dataframe of player box scores.
#'
#' @examples
#' \donttest{
#' load_player_box_scores()
#'
#' load_player_box_scores(2024)
#'
#' load_player_box_scores(TRUE)
#' }
#'
#' @export
load_player_box_scores <- function(seasons = most_recent_season()) {
  seasons <- check_seasons_legit(seasons)
  urls <- glue::glue(
    "{RELEASE_URL}/player_box_scores/player_box_scores_{seasons}.rds"
  )
  out <- nflreadr::load_from_url(urls, seasons = seasons)
  return(out)
}
