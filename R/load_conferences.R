#' Load cbb conference information
#'
#' @description Loads information about college basketball conferences
#'
#' @return a dataframe of information about college basketball conferences.
#'
#' @examples
#' \donttest{
#' load_conferences()
#' }
#' @export
load_conferences <- function() {
  out <- nflreadr::load_from_url(
    glue::glue("{RELEASE_URL}/conferences/conferences.rds")
  )
  return(out)
}
