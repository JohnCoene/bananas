#' Setup
#'
#' Set your bananas.
#'
#' @param key Your API key.
#' @param server Part of the URL corresponds to the data center for your account, see details.
#' @param version API version.
#'
#' @details \code{server}: The last part of your MailChimp API key, and/or first part of your mailchimp url.
#'
#' @examples
#' \dontrun{set_bananas("xXXXXXxxXXXxx")}
#'
#' @export
set_bananas <- function(key, server = NULL, version = "3.0"){

  if(!missing(key)){
    server <- tryCatch(strsplit(key, "-")[[1]][[2]], error = function(e) e)
    options(BANANA_KEY = key)
  }

  if(is.null(server) || inherits(server, "error"))
    cat("Woah there, your key is", crayon::yellow("bananas"), "- check it again!")

  uri <- paste0("https://", server, ".api.mailchimp.com/", version)

  options(BANANA_BASE_URL = uri)

  if(is.null(getOption("BANANA_KEY")))
    cat("No", crayon::yellow("key"), "= no", crayon::yellow("banana!"))
  else
    cat("You're", crayon::yellow("set!"))
}

