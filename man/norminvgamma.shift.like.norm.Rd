\name{norminvgamma.shift.like.norm}
\alias{norminvgamma.shift.like.norm}
\title{Calculate the likelihood of normalized comparative data as Brownian motions with inverse gamma distributed rates}
\usage{
norminvgamma.shift.like.norm(phy, dat, alpha, beta, rates, norm = 1)
}
\arguments{
  \item{phy}{an ape format phylogeny on which to simulate}

  \item{dat}{a matrix of comparative data, in which rows
  correspond to species and columns correspond to traits}

  \item{alpha}{the shape parameter of the inverse gamma
  distribution}

  \item{beta}{the scale parameter of the inverse gamma
  distribution}

  \item{rates}{a vector of rates for each branch of the
  phylogeny. The order of elements in rates shoud
  correspond to the order of phy$branches}

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
independent Brownian motion with inverse gamma distributed
rates. The data are normalized relative to the trait values
in a specified species.
}
\examples{
data(yeast)
sim.dat = norminvgamma.shift.sim.group(yeast.tree,2,2,rep(1,6),10)
norminvgamma.shift.like.norm(yeast.tree,sim.dat,2,2,rep(1,6))
}

