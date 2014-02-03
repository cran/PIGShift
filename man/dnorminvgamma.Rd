\name{dnorminvgamma}
\alias{dnorminvgamma}
\title{Compute the pdf for normal-inverse-gamma random variates}
\usage{
dnorminvgamma(x, alpha, beta, log = FALSE)
}
\arguments{
  \item{x}{a vector of points at which to evaluat the
  density}

  \item{alpha}{shape parameter of the inverse gamma
  distribution}

  \item{beta}{scale parameter of the inverse gamma
  distribution}

  \item{log}{a logical indicated whether to return the log
  of the pdf}
}
\value{
A vector densities corresponding to the entries of x
}
\description{
This function returns the normal-inverse-gamma density
evaluated at specific points
}

