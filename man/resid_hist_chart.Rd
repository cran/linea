% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/charting.R
\name{resid_hist_chart}
\alias{resid_hist_chart}
\title{resid_hist_chart}
\usage{
resid_hist_chart(
  model = NULL,
  decomp_list = NULL,
  pool = NULL,
  color = "black",
  verbose = FALSE
)
}
\arguments{
\item{model}{Model object}

\item{decomp_list}{list object generated by the \code{decomping} function.}

\item{pool}{string specifying a group within the pool column to be filtered}

\item{color}{string specifying bar color}

\item{verbose}{A boolean to specify whether to print warnings}
}
\value{
a \code{plotly} histogram of the model's residuals
}
\description{
Histogram of Model Residuals
}
\details{
Plot a histogram to visualise the distribution of residuals.
This is meant to assess the residual distribution's normality.
}
