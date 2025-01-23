#' Difference-in-Differences Estimation
#'
#' @param data Panel data frame
#' @param outcome_var Outcome variable
#' @param treat_var Treatment indicator
#' @param time_var Time period indicator
#' @return DID estimate
#' @export
did_estimate <- function(data, outcome_var, treat_var, time_var) {
  model_formula <- stats::as.formula(
    paste(deparse(substitute(outcome_var)),
          "~", deparse(substitute(treat_var)), "*",
          deparse(substitute(time_var)))
  )
  stats::lm(model_formula, data = data)
}