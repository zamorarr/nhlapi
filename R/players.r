#' NHL Players (People)
#'
#' Query data on NHL players, including stats.
#'
#' @param player_id player id to request
#' @param season season to request, ex. "20172018"
#'
#' @examples
#' \dontrun{
#' player <- get_player("8475149")
#' stats <- get_player_stats("8475149")
#' }
#' @export
get_player <- function(player_id) {
  assert_is_number(player_id)
  path <- paste("people", player_id, sep = "/")
  nhl_api(path)
}

#' @rdname get_player
#' @export
get_player_stats <- function(player_id, season = NULL) {
  assert_is_number(player_id)
  path <- paste("people", player_id, "stats", sep = "/")
  query <- list(stats = "gameLog", season = NULL)

  nhl_api(path, query)
}
