% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot-hai-density-qq.R
\name{hai_density_qq_plot}
\alias{hai_density_qq_plot}
\title{Density QQ Plot}
\usage{
hai_density_qq_plot(
  .data,
  .dist_name_col = distribution,
  .x_col = x,
  .y_col = y,
  .size = 1,
  .alpha = 0.382,
  .interactive = FALSE
)
}
\arguments{
\item{.data}{The data that is produced from using \code{hai_get_density_data_tbl}}

\item{.dist_name_col}{The column that has the distribution name, should be
distribution and that is set as the default.}

\item{.x_col}{The column that contains the x values that comes from the
\code{hai_get_density_data_tbl} function.}

\item{.y_col}{The column that contains the y values that comes from the
\code{hai_get_density_data_tbl} function.}

\item{.size}{The size parameter for ggplot}

\item{.alpha}{The alpha parameter for ggplot}

\item{.interactive}{This is a Boolean fo TRUE/FALSE and is defaulted to FALSE.
TRUE will produce a \code{plotly} plot.}
}
\value{
A plot, either \code{ggplot2} or \code{plotly}
}
\description{
this will produce a \code{ggplot2} or \code{plotly} histogram plot of the
density information provided from the \code{hai_get_density_data_tbl} function.
}
\details{
This will produce a qq plot of the density information that is
produced from the function \code{hai_get_density_data_tbl}. It will look for an attribute
from the \code{.data} param to ensure the function was used.
}
\examples{
library(dplyr)

df <- hai_scale_zero_one_vec(.x = mtcars$mpg) \%>\%
  hai_distribution_comparison_tbl()

tidy_density_tbl <- hai_get_density_data_tbl(df)

hai_density_qq_plot(
 .data = tidy_density_tbl,
 .dist_name_col = distribution,
 .x_col = x,
 .y_col = y,
 .size = 1,
 .alpha = 0.5,
 .interactive = FALSE
)

}
\seealso{
Other Distribution Plots: 
\code{\link{hai_density_hist_plot}()},
\code{\link{hai_density_plot}()}
}
\author{
Steven P. Sanderson II, MPH
}
\concept{Distribution Plots}
