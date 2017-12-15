#' NHL API
#'
#' @param path path to pull
#' @param query query parameters
nhl_api <- function(path, query = NULL) {
  baseurl <- "https://statsapi.web.nhl.com"
  path <- paste0("api/v1/", path)
  url <- httr::modify_url(baseurl, path = path, query = query)

  # get data
  resp <- httr::GET(url)

  # get content
  page <- httr::content(resp, "text", encoding = "utf-8")

  # check errors
  if (httr::http_error(resp)) {
    stop(
      sprintf(
        "NHL API request failed [%s]\n[%s]",
        httr::status_code(resp), url
      ),
      call. = FALSE
    )
  }

  # check data type
  if (httr::http_type(resp) != "application/json") {
    stop("API did not return json", call. = FALSE)
  }

  # parse content
  json <- jsonlite::fromJSON(page, simplifyVector = FALSE)

  # return S3 object
  structure(
    list(
      content = json,
      path = path,
      response = resp
    ),
    class = "nhl_api"
  )
}

#' @export
print.nhl_api <- function(x, ...) {
  cat("<NHL ", x[["path"]], ">\n", sep = "")
  utils::str(x[["content"]],2)
  invisible(x)
}
