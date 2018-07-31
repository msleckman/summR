#' SummR test function say_aloha
#'
#' @param name (character) Name of the person to say "have a good summer" to
#' @param print_to_console (logical) Option to print your message. Defaults to TRUE
#'
#' @return (character) good summer message
#' @export
#'
#' @examples
#' #say hello to a friend
#' say_aloha("Tom")
#' @importFrom crayon bgMagenta
#' @importFrom emo ji
#'
#'
say_aloha <- function(name, print_to_console = TRUE) {
## two parameters - name of function, and print

  stopifnot(is.character(name))
  # want this as first in function, if it comes after it will crash

  message <- paste("Have a good Summer,",
                   name,
                   emo::ji("palm_tree"),
                   emo::ji("sunny"),
                   emo::ji("ocean"))

  if (print_to_console) {
    cat(crayon::bgMagenta(message))
  }

  invisible(message)
}



