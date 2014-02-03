\name{var_invgamma}
\alias{var_invgamma}
\title{The variance of the inverse gamma distribution}
\usage{
var_invgamma(alpha, beta)
}
\arguments{
  \item{alpha}{the shape parameter of the inverse gamma
  distribution}

  \item{beta}{the scale parameter of the inverse gamma
  distribution}
}
\value{
the variance of the parameterized inverse gamma
disribution, given by beta^2/((alpha-1)^2*(alpha-2)) if
alpha > 2
}
\description{
This function returns the variance of inverse gamma
distributed random variables
}

