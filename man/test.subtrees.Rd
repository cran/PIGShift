\name{test.subtrees}
\alias{test.subtrees}
\title{Test all possible single-rate shift Brownian motion models and an Ornstein-Uhlenbeck model}
\usage{
test.subtrees(phy, dat, norm = 1)
}
\arguments{
  \item{phy}{an ape format phylogeny}

  \item{dat}{a matrix of gene expression data. Rows of dat
  correspond to species and columns of dat correspond to
  genes}

  \item{norm}{the species by which data should be
  normalized}
}
\value{
A list of several elements: res is the full output of the
optim runs used maximize the likelihood, branches are lists
of the branches that have a rate shift for each model, LL
is the log likelihood for each model, wAIC is the Akaike
information criterion weight for each model, alpha are
maximum likelihood estimates of the shape parameter of the
inverse gamma distribution for each model, beta are maximum
likelihood estimates of the scale paramter for each model
and shift are maximum likelihood estimates of the rate
shift parameter for each model (except for
Ornstein-Uhlenbeck, in which shift is an estimate of the
constraint parameter of the OU process).
}
\description{
This function will find the maximum likelihood estimate of
the parameters of every single rate shift model that is
compatible with the phylogeny phy, as well as the
likelihood and wAIC for each model. The procedure is
described in Schraiber et al (2013).
}

