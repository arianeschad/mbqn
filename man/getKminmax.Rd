% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getKminmax.R
\name{getKminmax}
\alias{getKminmax}
\title{Get the k largest/smallest elements}
\usage{
getKminmax(x, k, flag = "max")
}
\arguments{
\item{x}{a data matrix or data frame.}

\item{k}{an integer specifying the number of extreme values. Must be
\code{<= nrows(x)}.}

\item{flag}{use "min" or "max" (default) to select smallest or largest
elements.}
}
\value{
List with elements:
\item{\code{ik}}{indices of ordered extreme values}
\item{\code{minmax}}{ordered extreme values.}
}
\description{
Extract the k largest or smallest values and their indices for
each column of a matrix.
}
\details{
Order the values of each column of \code{x} and determine the
k smallest (\code{flag = "min"}) or largest (\code{flag = "max"}) values and
their indices. NA's in the data are ignored.
}
\examples{
# Create a data matrix
x <- matrix(c(5,2,3,NA,4,1,4,2,3,4,6,NA,1,3,1),ncol=3)
# Get indices of the 5 largest values in each column
getKminmax(x, k = 5, "max") 
}
\references{
Brombacher, E., Schad, A., Kreutz, C. (2020).
Tail-Robust Quantile Normalization. BioRxiv.
}
\author{
Ariane Schad
}
