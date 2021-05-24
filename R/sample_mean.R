#' Produces a sample mean from a vector of data.
#'
#' @param vec A vector of numerical data
#' @param n sample size you want mean from
#'
#' @return A sample mean from vec with sample size of n.
#'
#' @import purrr
#' @import dplyr
#' @import utils
#'
#' @export
sample_mean <- function(vec, n){

  sample <- sample(vec, n)

  sample_mean <- mean(sample)

  return(sample_mean)
}
