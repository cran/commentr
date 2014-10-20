



#' @rdname comment
#' @export
comment_line <- function(..., token = "#", html = FALSE){
  comment_start(html)
  writeLines(full_line(comment_width(...), token = token))
  comment_end(html)
}
