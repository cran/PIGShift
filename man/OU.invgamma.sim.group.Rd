\name{OU.invgamma.sim.group}
\alias{OU.invgamma.sim.group}
\title{Simulate phylogenetic comparative data as OUs with inverse gamma distributed rates}
\usage{
OU.invgamma.sim.group(phy, theta, alpha, beta, n)
}
\arguments{
  \item{phy}{an ape format phylogeny on which to simulate}

  \item{theta}{the strength of constraint}

  \item{alpha}{the shape parameter of the inverse gamma
  distribution}

  \item{beta}{the scale parameter of the inverse gamma
  distribution}

  \item{n}{the number of traits to simulate}
}
\value{
A matrix with each row corresponding to a species and each
column corresponding to a trait
}
\description{
This function simulates the evolution of a group of traits
evolving as independent Ornstein-Uhlenbeck processes with
inverse gamma distributed rates.
}
\examples{
data(yeast)
OU.invgamma.sim.group(yeast.tree,2,2,2,10)
}

