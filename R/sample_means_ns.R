#' Produces multiple sample means from a vector of data for multiple sample sizes sample size.
#'
#' @param vec A vector of numerical data
#' @param reps The number of sample means you want for all sample sizes specified in ns
#' @param ns A vector of different sample sizes you want means from
#'
#' @return A data.frame with a vector of sample means for a corresponding n(s) listed in vector ns.
#'
#' @import purrr
#' @import dplyr
#' @import utils
#'
#' @export

sample_means_ns <- function(vec, reps, ns){

  n <- stack(as.data.frame(replicate(reps, ns)))

  dataframe <- n %>%
    mutate(
      sample_mean = map(n$values, ~many_sample_means(vec = vec, n = .x, reps = 1)) %>% unlist(),
      n  = values
    ) %>%
    select(sample_mean, n)




  return(dataframe)
}
