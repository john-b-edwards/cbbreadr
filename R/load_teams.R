#' Load cbb teams
#'
#' @description Pull in information on all teams that played in a given season.
#'
#' @param seasons an integer of seasons to fetch data for. Defaults to the most recent season. Pass in `TRUE` to fetch all seasons.
#'
#' @return a dataframe of all college basketball teams tracked by collegebasketballdata.com for a given season(s).
#'
#' @examples
#' \donttest{
#' load_team()
#'
#' load_team(2024)
#'
#' load_teams(TRUE)
#' }
#'
#' @export
load_teams <- function(seasons = most_recent_season()) {
  seasons <- check_seasons_legit(seasons, first_season = 2003)
  urls <- glue::glue("{RELEASE_URL}/teams/teams_{seasons}.rds")
  out <- nflreadr::load_from_url(urls, seasons = seasons)
  return(out)
}
