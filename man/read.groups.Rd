\name{read.groups}
\alias{read.groups}
\title{Read in the members of a gene group}
\usage{
read.groups(filename, sep = "\\t")
}
\arguments{
  \item{filename}{the file containing the list of gene
  groups}

  \item{sep}{indicate the appropriate separator if not tab}
}
\value{
A list whose names are gene group names and whose elements
are vectors of genes
}
\description{
This function reads in the names of the members of a group
of genes and stores them to a list. The input file needs to
be formatted appropriately, with one group per line:
groupname<tab>gene1<tab>gene2...geneK
}

