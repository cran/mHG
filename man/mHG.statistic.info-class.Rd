\name{mHG.statistic.info-class}
\Rdversion{1.1}
\docType{class}
\alias{mHG.statistic.info-class}

\title{Class \code{"mHG.statistic.info"}}
\description{
Summarizes data about the minimum-hypergeometric (mHG) statistic of a \{0,1\}^N vector.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("mHG.statistic.info", ...)}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{
    \item{\code{mHG}:}{The actual statistic.}
    \item{\code{n}:}{The index in which the minimum was obtained.}
	\item{\code{b}:}{\eqn{\sum\limits_{i=1}^n \lambda_i}{Sum over 1 <= i <= n of lambdas[i]}.}
  }
}
\section{Methods}{
No methods defined with class "mHG.statistic.info" in the signature.
}
\references{
\cite{Eden, E. (2007). Discovering Motifs in Ranked Lists of DNA Sequences. Haifa. 
Retrieved from http://bioinfo.cs.technion.ac.il/people/zohar/thesis/eran.pdf
(page 10)}
}
\author{
Kobi Perl
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{mHG.statistic.calc}}
%%  ~~objects to See Also as \code{\link{~~fun~~}}, ~~~
%%  ~~or \code{\linkS4class{CLASSNAME}} for links to other classes ~~~
}
\examples{
showClass("mHG.statistic.info")
}
\keyword{classes}