#' Load recruiting data
#'
#' @description Loads information about college basketball recruiting
#'
#' @return a dataframe of information about college basketball recruits
#'
#' @examples
#' \donttest{
#' load_recruiting()
#' }
#' @export
load_recruiting <- function() {
  out <- nflreadr::load_from_url(
    glue::glue("{RELEASE_URL}/recruiting/recruiting.rds")
  )
  return(out)
}
