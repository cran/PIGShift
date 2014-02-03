\name{compute.sqrt.dist}
\alias{compute.sqrt.dist}
\title{Compute the vector of branch scaling parameters}
\usage{
compute.sqrt.dist(phy, norm = 1, species = phy$tip.label[-norm])
}
\arguments{
  \item{phy}{ape format phylogeny}

  \item{norm}{the species to which distances are computed}

  \item{species}{a vector of species names for which to
  compute distances}
}
\value{
A vector of square root of the distance between each
species and norm
}
\description{
This function computes the square root of the phylogenetic
distance between each species in the tree and one other
specified species. Assuming the true model is Brownian
motion with no rate shifts, the distributions of trait
change from a given species to any other species should be
identical when divided by the square root of the distance
between the two species.
}

