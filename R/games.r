#' NHL Games
#'
#' Query data on NHL games, including stats and content.
#'
#' @param game_id game id to request
#'
#' @examples
#' \dontrun{
#' game <- get_game_feed("2017020449")
#' }
#' @export
get_game_feed <- function(game_id) {
  assert_is_number(game_id)
  path <- paste("game", game_id, "feed", "live", sep = "/")
  nhl_api(path)
}

#' @rdname get_game_feed
#' @export
get_game_content <- function(game_id) {
  assert_is_number(game_id)
  path <- paste("game", game_id, "content", sep = "/")
  nhl_api(path)
}
