#' Reports
#'
#' Get bananas on reports!
#'
#' @param id Id of banana to fetch.
#' @param banana Banana type to fetch.
#'
#' @return A \code{list} of bananas.
#'
#' @examples
#' \dontrun{
#' set_bananas("xXXXXXxxXXXxx")
#'
#' reports <- report_bananas()
#' }
#'
#' @export
report_bananas <- function(id = NULL, banana = NULL){

  .get_banana_data(id = NULL, banana = NULL, ep = "reports")

}
