#' NHL Schedule
#'
#' Query data on NHL schedule.
#'
#' @param start_date,end_date the start and end dates to get schedule for
#'
#' @examples
#' \dontrun{
#' schedule <- get_schedule("2017-12-12", "2017-12-15")
#' }
#' @export
get_schedule <- function(start_date = Sys.Date(), end_date = Sys.Date()) {
  # convert to date object
  start_date <- as.Date(start_date)
  end_date <- as.Date(end_date)

  # format for query
  startDate = format(start_date, "%Y-%m-%d")
  endDate = format(end_date, "%Y-%m-%d")

  # query api
  query <- list(startDate = startDate, endDate = endDate)
  nhl_api("schedule", query)
}
