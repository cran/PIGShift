\name{dmvnorminvgamma}
\alias{dmvnorminvgamma}
\title{Compute the pdf for multi-variate normal-inverse-gamma random variates}
\usage{
dmvnorminvgamma(x, mu, alpha, beta, T, log = FALSE)
}
\arguments{
  \item{x}{a matrix where each row is a sample and each
  column is a dimension.}

  \item{mu}{a vector indicating the mean in each dimension}

  \item{alpha}{shape parameter of the inverse gamma
  distribution}

  \item{beta}{scale parameter of the inverse gamma
  distribution}

  \item{T}{the variance-covariance matrix}

  \item{log}{a logical indicated whether to return the log
  of the pdf}
}
\value{
A vector densities corresponding to the rows of x
}
\description{
This function returns the multi-variate
normal-inverse-gamma density evaluated at specific points
}

