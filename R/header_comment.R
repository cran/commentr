


#' @rdname comment
#' @export

header_comment <- function(
  title,
  description = "",
  author      = getOption("name"),
  contact     = getOption("contact"),
  client      = author,
  date_created= format(Sys.time(), "%Y-%m-%d"),
  date_updated= date_created,
  source      = getwd(),
  tab         = 17,
  token       = "#",
  html        = FALSE,
  ...
){
  
  ##  Felmeddelande om det saknas author och/eller contact
  if (is.null(author) | is.null(contact)) stop("Author and/or contact not specified! This can either be set manually (by strings) or by global option parameters 'name' and 'contact'. See '?options' for details!")
  
  ##  Width of the comment
  width <- comment_width(...)
  
  ##  Skapa textrad med titel och innehåll
  text_line <- function(which_text, text) {
    pre  <- str_pad(paste0(token, " ", which_text, ":"), tab, side = "right")
    text <- paste0(pre, text)
    paste0(str_pad(text, width - 1, side = "right"), token)
  }
  
  ##  Skapa textstycke utan titel
  text_paragraph <- function(text){
    x <- strwrap(text, width = width - 2, indent = tab - 1, exdent = tab - 1, prefix = token)
    paste(str_pad(x, width - 2, side = "right"), token)
  }
  
  ##  Bryt upp en lång text till stycke om nödvändigt, annars inte
  text_cond_paragraph <- function(which_text, text){
    if (str_length(text) < width - tab){
      writeLines(text_line(which_text, text))
    } else{
      writeLines(text_line(which_text, ""))
      writeLines(text_paragraph(text))
    }
  }
  
  ##  Print out header
  comment_start(html)
  writeLines(full_line(width, token = token))
  writeLines(empty_line(width, token = token))
  writeLines(text_line("Purpose", title))
  writeLines(empty_line(width, token = token))
  writeLines(text_line("Author", author))
  writeLines(text_line("Contact", contact))
  writeLines(text_line("Client", client))
  writeLines(empty_line(width, token = token))
  writeLines(text_line("Code created", date_created))
  writeLines(text_line("Last updated", date_updated))
  writeLines(text_line("Source", source))
  writeLines(empty_line(width, token = token))
  text_cond_paragraph("Comment", description) # writeLines anropat via text_cond_paragraph
  writeLines(empty_line(width, token = token))
  writeLines(full_line(width, token = token))
  comment_end(html)
  
  ## No returned object (just output message to the console)
}

