#' NHL Teams
#'
#' Query data on NHL teams, including rosters.
#'
#' @param team_id team id to request
#'
#' @examples
#' \dontrun{
#' teams <- get_teams()
#' team1 <- get_team("1")
#' roster1 <- get_roster("1")
#' }
#' @export
get_teams <- function() {
  nhl_api("teams")
}

#' @rdname get_teams
#' @export
get_team <- function(team_id) {
  assert_is_number(team_id)
  path <- paste("teams", team_id, sep = "/")
  nhl_api(path)
}

#' @rdname get_teams
#' @export
get_team_stats <- function(team_id) {
  assert_is_number(team_id)
  path <- paste("teams", team_id, "stats", sep = "/")
  query <- list(stats = "gameLog", season = NULL)
  nhl_api(path, query)
}

#' @rdname get_teams
#' @export
get_roster <- function(team_id) {
  assert_is_number(team_id)
  path <- paste("teams", team_id, "roster", sep = "/")
  nhl_api(path)
}
