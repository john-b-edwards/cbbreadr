#' Load cbb play by play data
#'
#' @description Grabs entire seasons of play-by-play data from the collegebasketballdata.com API.
#'
#' @param seasons an integer of seasons to fetch data for. Defaults to the most recent season. Pass in `TRUE` to fetch all seasons.
#'
#' @return a dataframe of play-by-play data from all D1 college basketball games.
#'
#' @examples
#' \donttest{
#' load_plays(2024)
#' }
#'
#' @export
load_plays <- function(seasons = most_recent_season()) {
  seasons <- check_seasons_legit(seasons, first_season = 2006)
  urls <- glue::glue(
    "{RELEASE_URL}/plays/plays_{seasons}.rds"
  )
  out <- nflreadr::load_from_url(urls, seasons = seasons)
  return(out)
}
