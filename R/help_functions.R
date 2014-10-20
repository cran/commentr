

################################################################################
#                                                                              #
#                               Helper functions                               #
#                                                                              #
################################################################################


#' Helper function to create string with repeated hashtags
#' @param ... arguments passed to \code{comment_width}
#' @param token a character specifying the comment symbol. "#" by default.
full_line <- function(..., token = "#"){
  paste0(rep_len(token, comment_width(...)), collapse = "")
}


#' Helper function to create string with hashtags and spaces
#' @param ... arguments passed to \code{comment_width}
#' @param token a character specifying the comment symbol. "#" by default.
empty_line <- function(..., token = "#"){
  paste0(token, str_pad(" ", comment_width(...) - 2, side = "both"), pad = token, collapse = "")
}


#' Comment start for R Markdown/HTML
#' @param html should the comment be used in HTML (FASLE by default)
comment_start <- function(html = FALSE){
  writeLines("")
  if (html) writeLines("<!--")
}

#' Comment end for R Markdown/HTML
#' @param html should the comment be used in HTML (FASLE by default)
comment_end <- function(html = FALSE){
  if (html) writeLines("-->")
  writeLines("")
}


