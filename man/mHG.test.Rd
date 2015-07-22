\name{mHG.test}
\alias{mHG.test}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Perform Minimum-Hypergeometric test.
}
\description{
Performs a minimum-hypergeometric (mHG) test.
The null-hypothesis is that provided list was randomly and equiprobable selected from all lists containing N entries, B of which are 1s.
The alternative hypothesis is that the 1s tend to appear at the top of the list.
}
\usage{
mHG.test(lambdas, n_max = length(lambdas))
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
\eqn{O(NB)} running time, \eqn{O(NB)} space.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
A list with class "htest" containing the following components:	
	\item{statistic }{The mHG statistic.}
	\item{p.value }{The p-value for the test.}
	\item{parameters }{\itemize{\item N - total number of white and black balls.\item B - number of black balls.\item n_max - Max partition considered by the algorithm.}}
	\item{n }{The index for which the mHG was obtained (smallest one if several n give the same mHG).}
	\item{b }{\eqn{\sum\limits_{i=1}^n \lambda_i}{Sum over 1 <= i <= n of lambdas[i]}.}	
}
\references{
\cite{Eden, E. (2007). Discovering Motifs in Ranked Lists of DNA Sequences. Haifa. 
Retrieved from http://bioinfo.cs.technion.ac.il/people/zohar/thesis/eran.pdf
(pages 10-12, 18-20)}
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
t <- mHG.test(lambdas)
t <- mHG.test(lambdas, n_max = 20)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ htest }