#' Produces the string for one day of the song.
#'
#' @param vec A vector of numerial data
#' @param reps The number of sample means you want for all sample sizes specified in ns
#' @param ns A vector of different sample sizes you want means from.
#'
#' @return A dataframe with a vector of sample means for a corresponding n(s) listed in vector ns.
#'
#' @import tidyverse
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
