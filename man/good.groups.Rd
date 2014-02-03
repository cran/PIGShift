\name{good.groups}
\alias{good.groups}
\title{Find groups represented in the data}
\usage{
good.groups(genes, groups, min_size = 2)
}
\arguments{
  \item{genes}{a vector containing the names of each gene
  for which expression data is available}

  \item{groups}{a list of gene groups, in the same format
  as the output of read.groups}

  \item{min_size}{the minimum size of groups to be
  considered}
}
\value{
A vector of group names that had at least min_size genes
represented in the data
}
\description{
This function takes in the list of genes for which gene
expression data are available as well as the list of gene
groups produced by read.groups and a minimum size
(min_size) and returns those genes that have at least
min_size genes with data available
}
\examples{
data(yeast)
length(GO.groups)
GO.groups.pruned = good.groups(colnames(yeast.hybrid),GO.groups,10)
length(GO.groups.pruned)
}

