% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pcView.R
\name{pcView}
\alias{pcView}
\title{Principal component visualization}
\usage{
pcView(mat, color = gsub(".*_", "", colnames(mat)), filename = NULL,
  width = 5, height = 4, ...)
}
\arguments{
\item{mat}{A data matrix.}

\item{color}{The column name specifying the color.}

\item{filename}{The file name of output figure.}

\item{width}{The width of the output figure.}

\item{height}{The height of the output figure.}

\item{...}{parameters in ggsave.}

\item{label}{The column name specifying the label.}
}
\value{
a ggplot instance.
}
\description{
Principal component visualization
}
\author{
Wubing Zhang
}
