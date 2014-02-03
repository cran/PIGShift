\name{remove.from.genome}
\alias{remove.from.genome}
\title{Remove genes from a specified group from the data}
\usage{
remove.from.genome(dat, groups, groups.to.remove)
}
\arguments{
  \item{dat}{gene expression data, rows are species,
  columns are gene, including colnames.}

  \item{groups}{a list of gene groups, in the same format
  as the output of read.groups}

  \item{groups.to.remove}{a vector of group names, the
  members of which will be removed from dat}
}
\value{
A new matrix of data with the genes that belonged to
groups.to.remove gone.
}
\description{
This function will remove data corresponding to genes that
are members of groups.to.remove.
}
\examples{
data(yeast)
GO.groups.pruned = good.groups(colnames(yeast.hybrid),GO.groups,10)
dim(yeast.hybrid)
to_remove = setdiff(names(GO.groups),GO.groups.pruned)
yeast.hybrid.pruned = remove.from.genome(yeast.hybrid,GO.groups,to_remove)
dim(yeast.hybrid.pruned)
}

