


#' @rdname comment
#' @export
block_comment <- function(
  description         = "",
  empty_lines_first   = 1,
  empty_lines_last    = empty_lines_first,
  allign              = "center",
  token               = "#",
  html                = FALSE,
  ...
) {
  
  ##  Specify width
  width <- comment_width(...)
  
  # Translate the allign argument to the side argument for str_pad
  # The names would be confusing without this recoding
  side <- switch(allign, "right" = "left", "left" = "right", "center" = "both")
  
  comment_start(html)
  writeLines(full_line(width, token = token))
  for (i in seq_len(empty_lines_first)) writeLines(empty_line(width, token = token))
  
  ## Conditions used to specify if the text should be on just one alligned line or split
  ## onto several lines.
  if (str_length(description) <= width - 4){
    writeLines(paste(token, str_pad(description, width - 4, side = side), token))
  } else{
    x <- strwrap(description, width = width - 2, prefix = token, indent = 1, exdent = 1)
    writeLines(paste(str_pad(x, width - 2, side = "right"), token))
    
    ## Warning that argument allign is ignored
    if (allign != "left") warning("Allignment is always set to 'left' when the text needs to be split to several lines! (Argument allign ignored.)", .call = FALSE)
  }
  
  for (i in seq_len(empty_lines_last)) writeLines(empty_line(width, token = token))
  writeLines(full_line(width, token = token))
  comment_end(html)
}
