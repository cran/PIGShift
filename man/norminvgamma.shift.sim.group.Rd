\name{norminvgamma.shift.sim.group}
\alias{norminvgamma.shift.sim.group}
\title{Simulate phylogenetic comparative data as Brownian motions with inverse gamma distributed rates}
\usage{
norminvgamma.shift.sim.group(phy, alpha, beta, rates, n)
}
\arguments{
  \item{phy}{an ape format phylogeny on which to simulate}

  \item{alpha}{the shape parameter of the inverse gamma
  distribution}

  \item{beta}{the scale parameter of the inverse gamma
  distribution}

  \item{rates}{a vector of rates, with each entry
  corresponding to an edge of phy. Rates should be in the
  same order as edges in phy$edge}

  \item{n}{the number of traits to simulate}
}
\value{
A matrix with each row corresponding to a species and each
column corresponding to a trait
}
\description{
This function simulates the evolution of a group of traits
evolving as independent Brownian motions with inverse gamma
distributed rates.
}
\examples{
data(yeast)
norminvgamma.shift.sim.group(yeast.tree,2,2,rep(1,6),10)
}

