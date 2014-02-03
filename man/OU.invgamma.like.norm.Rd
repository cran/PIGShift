\name{OU.invgamma.like.norm}
\alias{OU.invgamma.like.norm}
\title{Calculate the likelihood of normalized comparative data as OUs with inverse gamma distributed rates}
\usage{
OU.invgamma.like.norm(phy, dat, alpha, beta, theta, norm = 1)
}
\arguments{
  \item{phy}{an ape format phylogeny on which to simulate}

  \item{dat}{a matrix of comparative data, in which rows
  correspond to species and columns correspond to traits}

  \item{alpha}{the shape parameter of the inverse gamma
  distribution}

  \item{beta}{the scale parameter of the inverse gamma
  distribution}

  \item{theta}{the constraint parameter of the
  Ornstein-Uhlenbeck process}

  \item{norm}{the species by which all the data is
  normalized}
}
\value{
A vector, with the likelihood of each gene the observed
data
}
\description{
This function calculates the likelihood of the observed
trait data assuming that each trait evolves according to an
independent Ornstein Ulenbeck processes with inverse gamma
distributed rates. The data are normalized relative to the
trait values in a specified species.
}
\examples{
data(yeast)
sim.dat = OU.invgamma.sim.group(yeast.tree,2,2,2,10)
OU.invgamma.like.norm(yeast.tree,sim.dat,2,2,2)
}

