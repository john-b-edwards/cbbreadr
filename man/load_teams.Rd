% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/load_teams.R
\name{load_teams}
\alias{load_teams}
\title{Load cbb teams}
\usage{
load_teams(seasons = most_recent_season())
}
\arguments{
\item{seasons}{an integer or vector of integers of seasons to fetch data for. Defaults to the most recent season. Pass in \code{TRUE} to fetch all seasons.}
}
\value{
a dataframe of all college basketball teams tracked by collegebasketballdata.com for a given season(s).
}
\description{
Pull in information on all teams that played in a given season.
}
\examples{
\donttest{
try({ # avoid cran errors
load_teams()
})
}

}
\seealso{
\url{https://john-b-edwards.github.io/cbbreadr/articles/dictionary_teams.html} for a web version of the data dictionary

\code{\link{dictionary_teams}} for the data dictionary as bundled within the package

Issues with this data should be filed here: \url{https://github.com/john-b-edwards/cbbd-data/issues}
}
