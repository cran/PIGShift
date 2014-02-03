\name{normalize.vcv}
\alias{normalize.vcv}
\title{Compute the variance-covariance matrix of normalized phylogenetic data}
\usage{
normalize.vcv(vcv, which.norm = 1)
}
\arguments{
  \item{vcv}{origin variance-covariance matrix}

  \item{which.norm}{the species by which the data are
  normalized}
}
\value{
a matrix with nrow = ncol = ncol(vcv).
}
\description{
This function takes a variance-covariance matrix
corresponding to some model of trait evolution along a
phylogeny and returns the modified variance-covariance
matrix that results from normalizing the data by the trait
value in one of the species
}

