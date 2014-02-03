\name{plot_wAICbarplot}
\alias{plot_wAICbarplot}
\title{Plot a barplot of AIC weights for each model and each gene group}
\usage{
plot_wAICbarplot(dat, names, col = 2:(length(names) + 1), title = "",
  cex = 1.4, border = par("fg"), space = NULL, names.arg = 1:nrow(dat))
}
\arguments{
  \item{dat}{a wAIC matrix, rows are be gene groups and
  columns are models}

  \item{names}{a vector of names for each model}

  \item{col}{a vector of colors, one color corresponding to
  each model}

  \item{title}{name for the barplot}

  \item{cex}{character expansion factor}

  \item{border}{type of border around each bar in the
  barplots}

  \item{space}{amount of space between bars in the barplot}

  \item{names.arg}{names of bars in the barplot}
}
\value{
invisibly returns the ordering of gene groups in the
barplot.
}
\description{
This function will plot a barplot where each bar
corresponds to a gene group and the proportion of each bar
that is filled with a certain color corresponds to the AIC
weight for a given model. Bars are sorted according to
which model has the highest weight.
}
\examples{
\dontrun{
data(yeast)
GO.groups.pruned = good.groups(colnames(yeast.homozygote),GO.groups,30)
test_groups = GO.groups[GO.groups.pruned[1:100]]
yeast.test = test.groups(yeast.tree,yeast.homozygote,test_groups,print_names=T)
plot_wAICbarplot(mytest$wAIC,1:7)
}
}

