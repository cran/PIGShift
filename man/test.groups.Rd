\name{test.groups}
\alias{test.groups}
\title{Test all possible single-rate shift Brownian motion models and an Ornstein-Uhlenbeck model
for an arbitrary number of predefined gene groups.}
\usage{
test.groups(phy, dat, groups, norm = 1, print_names = F)
}
\arguments{
  \item{phy}{an ape format phylogeny}

  \item{dat}{a matrix of gene expression data. Rows of dat
  correspond to species and columns of dat correspond to
  genes}

  \item{groups}{a list of gene groups, formatted like the
  output of read.groups}

  \item{norm}{the species by which data should be
  normalized}

  \item{print_names}{a logical indicating whether to print
  the name of the group currently being analyzed. Useful to
  keep track of the progress of the function}
}
\value{
A list of several elements. wAIC is a matrix of Akaike
weights for each model for each group (rows are groups,
columns are models), alpha is the maximum likelihood shape
parameter of the inverse gamma distribution for each model
and group, beta is the maximum likelihood scale parameter
of the inverse gamma distribution for each model and group,
and shift is the maximum likelihood rate shift parameter
for each model and each group, except for the final model
which is Ornstein-Uhlenbeck, in which case it corresponds
to the constraint parameter. Branches indicates which
branches of the tree experience a rate shift.
}
\description{
This function will find the maximum likelihood estimate of
the parameters of every single rate shift model that is
compatible with the phylogeny phy, as well as the
likelihood and wAIC for each model and for each gene group.
The procedure is described in Schraiber et al (2013).
}
\examples{
\dontrun{
data(yeast)
GO.groups.pruned = good.groups(colnames(yeast.homozygote),GO.groups,30)
to_test = GO.groups[GO.groups.pruned[1:100]]
yeast.test = test.groups(yeast.tree,yeast.homozygote,to_test,print_names=T)
}
}

