#' Produces multiple sample means from a vector of data for a single sample size.
#'
#' @param vec A vector of numerical data
#' @param n sample sizes you want means from
#' @param reps The number of sample means you want
#'
#' @return A list of sample means.
#'
#' @import tidyverse
#' @import utils
#'
#' @export
many_sample_means <- function(vec, n, reps){

  sample_means <- replicate(reps, sample_mean(vec, n))

  return(sample_means)
}
