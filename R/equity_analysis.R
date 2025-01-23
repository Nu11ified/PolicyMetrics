#' Calculate Gini Coefficient
#'
#' @param x Numeric vector of wealth/income values
#' @return Gini coefficient between 0 and 1
#' @export
#' @examples
#' gini(c(10, 20, 30, 40, 50))
gini <- function(x) {
  x <- sort(x)
  n <- length(x)
  numerator <- sum(x * 1:n)
  denominator <- sum(x) * n
  (2 * numerator / denominator) - (n + 1)/n
}

#' Disparity Analysis Visualization
#'
#' @param data Data frame with policy metrics
#' @param group_var Grouping variable
#' @param metric_var Metric to analyze
#' @export
plot_disparity <- function(data, group_var, metric_var) {
  ggplot2::ggplot(data, ggplot2::aes(x = {{ group_var }}, y = {{ metric_var }})) +
    ggplot2::geom_boxplot() +
    ggplot2::theme_minimal() +
    ggplot2::labs(title = "Policy Outcome Disparity Analysis",
                  x = "Demographic Group",
                  y = "Policy Metric")
}