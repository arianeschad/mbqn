% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mbqnThreshold.R
\name{getPvalue}
\alias{getPvalue}
\title{Calculates Pitman-Morgan variance test on two matrices}
\usage{
getPvalue(mtx1, mtx2)
}
\arguments{
\item{mtx1}{Matrix with samples in columns and features in rows}

\item{mtx2}{Matrix with samples in columns and features in rows}
}
\value{
Data frame with p values and statistics
}
\description{
Calculates Pitman-Morgan variance test on two matrices
}
\examples{
set.seed(30)
n <- 20
m <- 20
mtx1 <- matrix(rnorm(m * n), m, n)
mtx2 <- mbqn(mtx1, FUN = "mean")
getPvalue(mtx1, mtx2)
}
