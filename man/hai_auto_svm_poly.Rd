% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/boilerplate-svm_poly.R
\name{hai_auto_svm_poly}
\alias{hai_auto_svm_poly}
\title{Boilerplate Workflow}
\usage{
hai_auto_svm_poly(
  .data,
  .rec_obj,
  .splits_obj = NULL,
  .rsamp_obj = NULL,
  .tune = TRUE,
  .grid_size = 10,
  .num_cores = 1,
  .best_metric = "f_meas",
  .model_type = "classification"
)
}
\arguments{
\item{.data}{The data being passed to the function. The time-series object.}

\item{.rec_obj}{This is the recipe object you want to use. You can use
\code{hai_svm_poly_data_prepper()} an automatic recipe_object.}

\item{.splits_obj}{NULL is the default, when NULL then one will be created.}

\item{.rsamp_obj}{NULL is the default, when NULL then one will be created. It
will default to creating an \code{\link[rsample:mc_cv]{rsample::mc_cv()}} object.}

\item{.tune}{Default is TRUE, this will create a tuning grid and tuned workflow}

\item{.grid_size}{Default is 10}

\item{.num_cores}{Default is 1}

\item{.best_metric}{Default is "f_meas". You can choose a metric depending on the
model_type used. If \code{regression} then see \code{\link[=hai_default_regression_metric_set]{hai_default_regression_metric_set()}},
if \code{classification} then see \code{\link[=hai_default_classification_metric_set]{hai_default_classification_metric_set()}}.}

\item{.model_type}{Default is \code{classification}, can also be \code{regression}.}
}
\value{
A list
}
\description{
This is a boilerplate function to create automatically the following:
\itemize{
\item recipe
\item model specification
\item workflow
\item tuned model (grid ect)
}
}
\details{
This uses the \code{parsnip::svm_poly()} with the \code{engine} set to \code{kernlab}
}
\examples{
\dontrun{
data <- iris

rec_obj <- hai_svm_poly_data_prepper(data, Species ~ .)

auto_svm_poly <- hai_auto_svm_poly(
  .data = data,
  .rec_obj = rec_obj,
  .best_metric = "f_meas"
)

auto_svm_poly$recipe_info
}

}
\seealso{
\url{https://parsnip.tidymodels.org/reference/svm_poly.html}

Other Boiler_Plate: 
\code{\link{hai_auto_c50}()},
\code{\link{hai_auto_cubist}()},
\code{\link{hai_auto_earth}()},
\code{\link{hai_auto_glmnet}()},
\code{\link{hai_auto_knn}()},
\code{\link{hai_auto_svm_rbf}()},
\code{\link{hai_auto_wflw_metrics}()}

Other SVM_Poly: 
\code{\link{hai_svm_poly_data_prepper}()}
}
\author{
Steven P. Sanderson II, MPH
}
\concept{Boiler_Plate}
\concept{SVM_Poly}
