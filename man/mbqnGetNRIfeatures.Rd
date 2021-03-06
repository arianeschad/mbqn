% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mbqnGetNRIfeatures.R
\name{mbqnGetNRIfeatures}
\alias{mbqnGetNRIfeatures}
\title{Identify rank invariant (RI) and nearly rank invariant (NRI) features}
\usage{
mbqnGetNRIfeatures(x, low_thr = 0.5, method = NULL, verbose = TRUE)
}
\arguments{
\item{x}{a data matrix. Rows represent features, e.g. protein abundances;
columns represent samples.}

\item{low_thr}{a value between [0 1]. Features with RI
frequency >=\code{low_thr} are considered as NRI/RI; default 0.5.}

\item{method}{character specifying function for computation of quantile
normalization; "limma" (default) for \code{normalizeQuantiles()} from the
limma package or "preprocessCore" for \code{normalize.quantiles()} from the
preprocessCore package.}

\item{verbose}{logical indicating to print messages.}
}
\value{
A list with elements:
\item{\code{p}}{a matrix with the rank invariance frequencies \code{ri.freq}
and the sample coverage \code{sample.coverage} for all detected RI/NRI
features}
\item{\code{max_p}}{maximum rank invariance frequency in percent}
\item{\code{ip}}{index of feature with maximum rank invariance frequency}
\item{\code{nri}}{table of the rank invariance frequencies in percent for
each NRI/RI feature}
\item{\code{var0_feature}}{indices of features with zero sample variance
after QN}
\item{\code{low_thr}}{threshold used for NRI/RI detection from RI frequency.}
}
\description{
Compute the rank frequency of each feature of a matrix and
identify NRI/RI features.
}
\details{
Quantile normalize the data matrix and sort ranks. Determine the
maximum frequency of equal rank across all columns for each feature.
Features with maximum frequency above the user-defined threhold are declared
as nearly rank invariant.
}
\examples{
## Check data matrix for RI and NRI features
set.seed(1234)
x <- mbqnSimuData("omics.dep")
RI <- mbqnGetNRIfeatures(x, low_thr = 0.5, verbose = FALSE)
mbqnPlotRI(RI)
}
\references{
Brombacher, E., Schad, A., Kreutz, C. (2020). Tail-Robust
Quantile Normalization. BioRxiv.
}
\seealso{
\code{\link[=mbqnPlotRI]{mbqnPlotRI()}} for visualization of detected NRI/RI features.
}
\author{
Ariane Schad
}
