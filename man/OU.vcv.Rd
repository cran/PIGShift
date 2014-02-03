\name{OU.vcv}
\alias{OU.vcv}
\title{The variance covariance matrix for an Ornstein-Uhlenbeck process}
\usage{
OU.vcv(phy, theta)
}
\arguments{
  \item{phy}{an ape format phylogeny}

  \item{theta}{the constraint parameter of the
  Ornstein-Uhlenbeck process}
}
\value{
a matrix with nrow = ncol = length(phy$tip.label), where
the i,jth entry corresponds to the covariance between
species i and j. NB: this is computed assuming that the
rate of evolution is equal to one, and can be rescaled
simply by multiplying
}
\description{
This function returns the variance-covariance matrix
corresponding to an Ornstein-Uhlenbeck process run along a
phylogeny
}

