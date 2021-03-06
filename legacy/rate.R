
#' @title rate
#' 
#' @description
#' Interest rate
#' 
#' @details
#' Interest rate
#' 
#' @rdname rate
#' @export rate
rate <- function(object, ...) UseMethod('rate', object)

#' @return \code{implied interest rate}
#' 
#' @rdname rate
#' @method rate CompoundFactor
#' @S3method rate CompoundFactor
rate.CompoundFactor <- function(object, dib=252, compounding='compounded') {
    rate(as.SpotRate(object, dib=dib, compounding=compounding))
}

