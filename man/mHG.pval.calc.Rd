\name{mHG.pval.calc}
\alias{mHG.pval.calc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate the p-value of a minimum-hypergeometric (mHG) statistic.
}
\description{
Calculates the p-value associated with the (minimum-hypergeometric) mHG statistic.
}
\usage{
mHG.pval.calc(p, N, B, n_max = N)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{
the mHG statistic. It is marked as p as it represents an "uncorrected" p-value.
}
  \item{N}{
total number of white and black balls (according to the hypergeometric problem definition).
}
  \item{B}{
number of black balls.
}
  \item{n_max}{
the algorithm will calculate the p-value under the assumption that only the
first \eqn{n_{max}}{n_max} partitions were taken into account in determining the mHG statistic.
}
}
\details{
\eqn{O(NB)} running time, \eqn{O(NB)} space.
}
\value{
the p-value of the test.
}
\references{
\cite{Eden, E. (2007). Discovering Motifs in Ranked Lists of DNA Sequences. Haifa. 
Retrieved from http://bioinfo.cs.technion.ac.il/people/zohar/thesis/eran.pdf
(pages 11-12, 19-20)}
}
\author{
Kobi Perl
}
%% ~Make other sections like Warning with \section{Warning }{....} ~
\examples{
N <- 50
B <- 15
lambdas <- numeric(50)
lambdas[sample(N, B)] <- 1
p <- mHG.statistic.calc(lambdas)@mHG
p.corrected <- mHG.pval.calc(p, N, B) # Could have used mHG.test directly
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ htest }