% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/charting.R
\name{heteroskedasticity_chart}
\alias{heteroskedasticity_chart}
\title{heteroscedasticity_chart}
\usage{
heteroskedasticity_chart(
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
a \code{plotly} scatter chart of the model's dependent variable over residuals
}
\description{
Scatter of Residuals over dependent Variable
}
\details{
Plot a scatter chart of residuals over the dependent variable.
This is meant to assess the consistency of the residuals' variance across the dependent variable.
}
