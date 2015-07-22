\name{mHG.statistic.calc}
\alias{mHG.statistic.calc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate the minimum-hypergeometric (mHG) statistic.
}
\description{
Calculates the minimum-hypergeometric (mHG) statistic.
\cr mHG definition: \eqn{mHG(\lambda)=min_{1<=n<N} HGT(b_n(\lambda))}{mHG(lambdas) = min over 1 <= n < N of HGT (b_n(lambdas); N, B, n)}
\cr Where HGT is the hypergeometric tail: \eqn{HGT(b;N,B,n)=Probability(X>=b)}{HGT(b; N, B, n) = Probability(X >= b)}, 
\cr and \eqn{b_n=\sum\limits_{i=1}^n \lambda_i}{b_n = sum over 1 <= i <= n of lambdas[i]}.
}
\usage{
mHG.statistic.calc(lambdas, n_max = length(lambdas))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{lambdas}{
\eqn{\{0,1\}^N}, sorted from top to bottom.
}
  \item{n_max}{
the algorithm will only consider the first \eqn{n_{max}}{n_max} partitions.
}
}
\details{
\eqn{O(n_{max}+B^2*log(B))}{O(n_max+B^2*log(B))} running time, \eqn{O(B)} space.
}
\value{
Instance of the class \code{mHG.statistic.info} (stores the statistics, and for which n and \eqn{b_n} it was obtained).
If several n give the same mHG, the smallest one is chosen.
}
\references{
\cite{Eden, E. (2007). Discovering Motifs in Ranked Lists of DNA Sequences. Haifa. 
Retrieved from http://bioinfo.cs.technion.ac.il/people/zohar/thesis/eran.pdf
(pages 10-11, 18-19)}
}
\author{
Kobi Perl
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{mHG.statistic.info-class}}
}
\examples{
N <- 50
B <- 15
lambdas <- numeric(50)
lambdas[sample(N, B)] <- 1
mHG.statistic.info <- mHG.statistic.calc(lambdas)@mHG
}