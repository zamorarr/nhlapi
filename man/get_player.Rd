% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/players.r
\name{get_player}
\alias{get_player}
\alias{get_player_stats}
\title{NHL Players (People)}
\usage{
get_player(player_id)

get_player_stats(player_id, season = NULL)
}
\arguments{
\item{player_id}{player id to request}

\item{season}{season to request, ex. "20172018"}
}
\description{
Query data on NHL players, including stats.
}
\examples{
\dontrun{
player <- get_player("8475149")
stats <- get_player_stats("8475149")
}
}
