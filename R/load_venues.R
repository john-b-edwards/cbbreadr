#' Load cbb venue information
#'
#' @description Loads information about college basketball venues.
#'
#' @return a dataframe of information about college basketball venues.
#'
#' @examples
#' \donttest{
#' load_venues()
#' }
#' @export
load_venues <- function() {
  out <- nflreadr::load_from_url(
    glue::glue("{RELEASE_URL}/venues/venues.rds")
  )
  return(out)
}
