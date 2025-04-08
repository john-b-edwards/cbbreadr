#' Load ranking data
#'
#' @description Loads information about college basketball rankings, polls, etc.
#'
#' @return a dataframe of information about college basketball rankings and polls
#'
#' @examples
#' \donttest{
#' load_rankings()
#' }
#' @export
load_rankings <- function() {
  out <- nflreadr::load_from_url(
    glue::glue("{RELEASE_URL}/rankings/rankings.rds")
  )
  return(out)
}
