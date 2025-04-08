#' Load college basketball games for a given season
#'
#' @description Pull in all college basketball games tracked by collegebasketballdata.com for a given season
#'
#' @param seasons an integer of seasons to fetch data for. Defaults to the most recent season. Pass in `TRUE` to fetch all seasons.
#'
#' @return a dataframe of all games in the specified season(s).
#'
#' @examples
#' \donttest{
#' load_games()
#'
#' load_games(2024)
#'
#' load_games(TRUE)
#' }
#'
#' @export
load_games <- function(seasons = most_recent_season()) {
  seasons <- check_seasons_legit(seasons)
  urls <- glue::glue(
    "{RELEASE_URL}/games/games_{seasons}.rds"
  )
  out <- nflreadr::load_from_url(urls, seasons = seasons)
  return(out)
}
