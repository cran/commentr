
#' @rdname comment
#' @export
line_comment <- function(title, ..., token = "#", html = FALSE){
  comment_start(html)
  writeLines(str_pad(paste0(" ", title, " "), comment_width(...), side = "both", pad = token))
  comment_end(html)
}
