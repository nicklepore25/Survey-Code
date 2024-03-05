calculate_weighted_percentages <- function(data, column_name, weights_column) {
  survey_design <- svydesign(ids = ~1, data = data, weights = weights_column)
  weighted_counts <- svytable(as.formula(paste("~", column_name)), survey_design)
  weighted_total_observations <- sum(weighted_counts)
  weighted_percentage <- (weighted_counts / weighted_total_observations) * 100
  return(weighted_percentage)
}
calculate_weighted_N <- function(data, column_name, weights_column) {
  survey_design <- svydesign(ids = ~1, data = data, weights = weights_column)
  weighted_counts <- svytable(as.formula(paste("~", column_name)), survey_design)
  return(weighted_counts)
}