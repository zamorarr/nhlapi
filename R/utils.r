assert_is_number <- function(x) {
  is_number <- length(x) == 1L & grepl("[[:digit:]]+", x)
  if (!is_number) {
    stop("value is not a number or string of numbers", call. = FALSE)
  }
}
