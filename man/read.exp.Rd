\name{read.exp}
\alias{read.exp}
\title{Read gene expression data from a file, sorted by a phylogenetic tree}
\usage{
read.exp(filename, phy, transpose = FALSE, normalize = 1, sep = "\\t")
}
\arguments{
  \item{filename}{expression data file. Ideally, rows
  correspond to species and columns correspond to genes.
  First column should be species names, first row should be
  gene names. If the file is formatted in a transpose (i.e.
  genes are rows and species are columns) then see the
  transpose argument}

  \item{phy}{an ape-format phylogenetic tree containing all
  the species that have gene expressiond data. The tip
  labels of phy should correspond to the species names in
  the gene expression data file}

  \item{transpose}{a logical indicating whether to
  transpose the data from the input file. Only necessary if
  the input file has rows corresponding to genes and
  columns corresponding to species}

  \item{normalize}{indicates which species to normalize by.
  If normalization is undesired (unlikely) set to 0.}

  \item{sep}{the character that separates entries in the
  expression file}
}
\value{
A matrix containing gene expression data, in which rows
correspond to species and columns correspond to genes
}
\description{
This funciton will read in gene expression data from a text
file and format it for downstream analysis. In particular,
it will ensure that species are sorted appropriately given
the phylogenetic tree and that the data is appropriately
normalized by one species
}

