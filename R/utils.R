.check_banana <- function(){
  if(is.null(getOption("BANANA_KEY")))
    stop("No key = no", crayon::yellow(" banana"), ", set your ", crayon::yellow("bananas"), "!", call. = FALSE)
}

.get_banana <- function(){
  getOption("BANANA_KEY")
}

.build_bananas <- function(ep, id, banana){

  if(!is.null(id))
    id <- paste0(id, "/")

  paste0(getOption("BANANA_BASE_URL"), "/", ep, "/", id, banana)
}

.get_banana_data <- function(id, banana, ep){
  .check_banana()

  uri <- .build_bananas("reports", id, banana)

  resp <- httr::GET(uri, httr::authenticate("anyString", .get_banana()))

  if(httr::status_code(resp) != 200)
    stop("Ah", crayon::yellow(" bananas"), "! It's not working.", call. = FALSE)

  httr::content(resp, type = "application/json")
}
