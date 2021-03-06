% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sequence_features.R
\name{sequence_features}
\alias{sequence_features}
\title{Generate the sequence feature matrix from GRanges.}
\usage{
sequence_features(query_gr, bsgnm)
}
\arguments{
\item{query_gr}{a GRanges object to generate the underlying sequence features, all the widths of the ranges must be equal.}

\item{bsgnm}{a BSgenome object which encode the genome information.}
}
\value{
a data.frame contains the sequence features in its collumns.
}
\description{
\code{sequence_features} is used to extract the sequence features given GenomicRanges object.
}
