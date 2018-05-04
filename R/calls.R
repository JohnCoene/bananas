#' Reports
#'
#' Get bananas on reports!
#'
#' @param id Id of banana to fetch.
#' @param banana Banana type to fetch.
#' @param color Color of banana.
#' @param ... Banana parameters.
#'
#' @return A \code{list} of bananas.
#'
#' @examples
#' \dontrun{
#' set_bananas("xXXXXXxxXXXxx")
#'
#' ping_bananas() # healthy bananas
#' 
#' bananas <- report_bananas() # get reports
#' bananas2 <- get_bananas() # get reports
#' identical(bananas, bananas2)
#' 
#' list_of_bananas <- list_bananas()
#' }
#'
#' @rdname calls
#' @export
get_bananas <- function(id = NULL, banana = NULL, color = c("reports", "lists"), ...){
  
  .get_banana_data(id, banana, list(...), ep = color[1])
  
}

#' @rdname calls
#' @export
report_bananas <- function(id = NULL, banana = NULL, ...){
  
  .get_banana_data(id, banana, list(...), ep = "reports")
  
}

#' @rdname calls
#' @export
list_bananas <- function(id = NULL, banana = NULL, ...){
  
  .get_banana_data(id, banana, list(...), ep = "lists")
  
}

#' @rdname calls
#' @export
ping_bananas <- function(){
  
  .get_banana_data(id = NULL, banana = NULL, list(), ep = "ping")
  
}