% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model_next_step.R
\name{run_combo_model}
\alias{run_combo_model}
\title{run_combo_model}
\usage{
run_combo_model(combos, model, model_null = FALSE, results_row = 1)
}
\arguments{
\item{combos}{output of \code{linea::what_combo()} function}

\item{model}{Model object}

\item{model_null}{a boolean to specify whether the model should be used as starting point}

\item{results_row}{numeric value of the model (i.e. row from what_combo()$results) to run}
}
\value{
list of two \code{data.frame} mapping variables' transformations to the respective model's statistics.
}
\description{
generate the mode object from the output of \code{linea::what_combo()}
}
\details{
Generate the mode object from the output of \code{linea::what_combo()}
Using the specs from the output of \code{linea::what_combo()} a new model is run.
}
\examples{

# using a model object
data = read_xcsv("https://raw.githubusercontent.com/paladinic/data/main/ecomm_data.csv")
dv = 'ecommerce'
ivs = c('christmas','black.friday')


trans_df = data.frame(
  name = c('diminish', 'decay', 'hill', 'exp'),
  ts = c(FALSE,TRUE,FALSE,FALSE),
  func = c(
    'linea::diminish(x,a)',
    'linea::decay(x,a)',
    "linea::hill_function(x,a,b,c)",
    '(x^a)'
  ),
  order = 1:4
) \%>\%
  dplyr::mutate(offline_media = dplyr::if_else(condition = name == 'hill',
                                               '(1,50),(1),(1,100)',
                                               '')) \%>\%
  dplyr::mutate(offline_media = dplyr::if_else(condition = name == 'decay',
                                              '.1,.7 ',
                                              offline_media)) \%>\%
  dplyr::mutate(online_media = dplyr::if_else(condition = name == 'decay',
                                              '.1,.7 ',
                                              '')) \%>\%
  dplyr::mutate(promo = '')

model = run_model(data = data,dv = dv,ivs = ivs, trans_df = trans_df)

combos = what_combo(model = model,trans_df = trans_df)

combos \%>\%
 run_combo_model(model,1)
}
