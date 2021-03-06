% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DEAnalyze.R
\docType{methods}
\name{DEAnalyze}
\alias{DEAnalyze}
\title{Differential expression analysis}
\usage{
DEAnalyze(obj, SampleAnn = NULL, type = "Array", method = "limma",
  paired = FALSE, GeneAnn = NULL, return = c("data.frame",
  "ExpressionSet")[1],
  app.dir = "/Users/Wubing/Applications/gfold/gfold")
}
\arguments{
\item{obj}{Matrix like object or an ExpressionSet instance.}

\item{SampleAnn}{Matrix like object (only when obj is a matrix),
the rownames should match colnames in obj, and the first column should be Condition.}

\item{type}{"Array", "RNASeq" or "msms", only needed when obj is matrix like object.}

\item{method}{Differential expression analysis method, e.g. limma, DESeq2, GFOLD,
glm.pois, glm.qlll, and glm.nb.}

\item{paired}{Boolean, specifying whether perform paired comparison.}

\item{GeneAnn}{Matrix like object (only when obj is a matrix), the rownames should match rownames of obj.}

\item{return}{Character, either data.frame or ExpressionSet, specifying the return object type.}

\item{app.dir}{The path to application (e.g. GFOLD).}
}
\value{
An ExpressionSet instance.
}
\description{
Differential expression analysis
}
\seealso{
\code{\link{ExpressionSet-class}}
}
\author{
Wubing Zhang
}
