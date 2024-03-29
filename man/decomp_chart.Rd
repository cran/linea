% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/charting.R
\name{decomp_chart}
\alias{decomp_chart}
\title{decomp_chart}
\usage{
decomp_chart(
  model = NULL,
  decomp_list = NULL,
  pool = NULL,
  colors = color_palette(),
  variable_decomp = FALSE,
  verbose = FALSE
)
}
\arguments{
\item{model}{Model object}

\item{decomp_list}{list object generated by the \code{decomping} function.}

\item{pool}{string specifying a group within the pool column to be filtered}

\item{colors}{character vector of colors in hexadecimal notation}

\item{variable_decomp}{boolean specifying whether the chart should be based on the variable_decomp or the category_decomp from the \code{decomping} function.}

\item{verbose}{A boolean to specify whether to print warnings}
}
\value{
a \code{plotly} bar chart of the model's decomposition
}
\description{
Variable Decomposition Bar Chart
}
\details{
Plot the variable, or category, decomposition as stacked bars over the id variable which can be supplied to the \code{decomping} function.
}
