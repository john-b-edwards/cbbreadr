#' Load media for cbb games
#'
#' @description Pull in broadcast information for all games in a given season
#'
#' @param seasons an integer of seasons to fetch data for. Defaults to the most recent season. Pass in `TRUE` to fetch all seasons.
#'
#' @return a dataframe of broadcast information for all games for the specified season(s).
#'
#' @examples
#' \donttest{
#' load_media()
#'
#' load_media(2024)
#'
#' load_media(TRUE)
#' }
#'
#' @export
load_media <- function(seasons = most_recent_season()) {
  seasons <- check_seasons_legit(seasons)
  urls <- glue::glue(
    "{RELEASE_URL}/media/media_{seasons}.rds"
  )
  out <- nflreadr::load_from_url(urls, seasons = seasons)
  return(out)
}
