% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/polya_stats.R
\name{calculate_polya_stats}
\alias{calculate_polya_stats}
\title{Calculates basic statistics for polya lengths}
\usage{
calculate_polya_stats(polya_data, min_reads = 0,
  grouping_factor = "sample_name", condition1 = NA, condition2 = NA,
  stat_test = "Wilcoxon", use_dwell_time = FALSE, custom_glm_formula,
  alpha = 0.05)
}
\arguments{
\item{polya_data}{input table with polyA predictions}

\item{min_reads}{minimum number of reads to include transcript in the analysis}

\item{grouping_factor}{which column defines groups (default: sample_name)}

\item{condition1}{if \code{grouping_factor} has more than 2 levels, which level use for comparison}

\item{condition2}{if \code{grouping_factor} has more than 2 levels, which level use for comparison}

\item{stat_test}{what statistical test to use for testing, currently supports "Wilcoxon" (for \link{wilcox.test}), "KS" (for \link[FSA]{ksTest} from FSA package) or "glm" (for \link{glm})}

\item{use_dwell_time}{if TRUE, will use dwell time instead of estimated polya length for statistics}

\item{custom_glm_formula}{provides custom formula to be used with glm statistical test}
}
\value{
A list with elements:\itemize{
\item summary - summary table with pvalues and median/mean values associated to each transcript
\item stats - input table with p.value column added}
}
\description{
Takes polyA predictions table as input and checks if there is significant difference in polyA lengths between chosen conditions for each transcript.
By default, Wilcoxon Rank Sum (\link{wilcox.test}) test is used.
}
