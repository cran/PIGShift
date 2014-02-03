\name{plot_logfoldchange}
\alias{plot_logfoldchange}
\title{Plot densities of expression differences, possibly normalized}
\usage{
plot_logfoldchange(dat, groups, group_name = "", normalize = rep(1,
  nrow(dat)), remove.row = 1, color = 1:nrow(dat), main = group_name,
  names.arg = rownames(dat)[-remove.row], plot.legend = T, lwd = 1)
}
\arguments{
  \item{dat}{a matrix of comparative data, in which rows
  correspond to species and columns correspond to traits}

  \item{groups}{a list of gene groups, in the same format
  as the output of read.groups}

  \item{group_name}{the name of the gene group for which to
  plot density. Leave as default to use all genes}

  \item{normalize}{a vector of normalizations,
  corresponding to the order of speices in dat}

  \item{remove.row}{a species of the data matrix to remove.
  Use this option to ensure that the normalizing species is
  not plotted}

  \item{color}{a vector of colors in which to plot
  densities}

  \item{main}{the title of the plot. Default is group
  name.}

  \item{names.arg}{the name to assign to each density.
  Default is species name.}

  \item{plot.legend}{a logical indicating whether to plot a
  legend}

  \item{lwd}{the line width for each density}
}
\value{
Nothing
}
\description{
This function plots the densities of log fold change in
each species relative to a single species. Expression
differences may be normalized, to assess the fit of the
phylogentic model
}
\examples{
data(yeast)
sqrt.dist = compute.sqrt.dist(yeast.tree)
par(mfrow=c(1,2))
test_group = "GO:0007346|regulation of mitotic cell cycle"
plot_logfoldchange(yeast.homozygote,GO.groups,test_group)
plot_logfoldchange(yeast.homozygote,GO.groups,test_group,normalize=sqrt.dist)
}

