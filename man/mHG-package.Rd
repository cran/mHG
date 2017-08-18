\name{mHG-package}
\alias{mHG-package}
\alias{mHG}
\docType{package}
\title{
Minimum-Hypergeometric Test
}
\description{
Sometimes when running a hypergeometric test to check for enrichment for a feature in a group versus the background, the separation between the group and the background is done arbitrarily by setting a threshold on some other property. 
When the correct threshold is unknown, different thresholds can be tried, and the minimal p-value of the hypergeometric tests can be retreived.
If the elements can be sorted according to the property, it is possible to perform the hypergeometric tests on groups of increasing size.
The minimum over all the tests is the minimum hypergeometric statistic, or mHG.
The mHG is not a p-value by itself, as multiple tests were performed, without correcting for this.
The package provides means to calculate the statistic (mHG.statistic.calc), to fix the p-value (mHG.pval.calc) or to perform the entire test at once (mHG.test).
This is an R implementation of the algorithm described in:\cr
\cite{Eden, E. (2007). Discovering Motifs in Ranked Lists of DNA Sequences. Haifa. 
Retrieved from http://bioinfo.cs.technion.ac.il/people/zohar/thesis/eran.pdf}
}
\details{
\tabular{ll}{
Package: \tab mHG\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-05-18\cr
License: \tab GPL-2\cr
Depends: \tab methods\cr
}
The package provides means to calculate the statistic (\code{mHG.statistic.calc}), to fix the p-value (\code{mHG.pval.calc}) or to perform the entire test at once (\code{mHG.test}).
}
\author{
Kobi Perl <kobipe3@gmail.com>
}
\references{
\cite{Eden, E. (2007). Discovering Motifs in Ranked Lists of DNA Sequences. Haifa. 
Retrieved from http://bioinfo.cs.technion.ac.il/people/zohar/thesis/eran.pdf}
}
\seealso{
\code{\link{mHG.statistic.calc}}
\code{\link{mHG.pval.calc}}
\code{\link{mHG.test}}
}
\keyword{ htest }
\keyword{ package }
\examples{
N <- 50
B <- 15
lambdas <- numeric(50)
lambdas[sample(N, B)] <- 1
t <- mHG.test(lambdas)
t <- mHG.test(lambdas, n_max = 20)
}
