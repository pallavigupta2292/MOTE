% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/v.chi.sq.R
\name{v.chi.sq}
\alias{v.chi.sq}
\title{V for Chi-Square}
\usage{
v.chi.sq(x2, n, r, c, a = 0.05)
}
\arguments{
\item{x2}{chi-square statistic}

\item{n}{sample size}

\item{r}{number of rows in the contingency table}

\item{c}{number of columns in the contingency table}

\item{a}{significance level}
}
\value{
Provides V with associated confidence intervals
and relevant statistics.

\item{v}{v-statistic}
\item{vlow}{lower level confidence interval of omega}
\item{vhigh}{upper level confidence interval of omega}
\item{n}{sample size}
\item{df}{degrees of freedom}
\item{x2}{significance statistic}
\item{p}{p-value}
}
\description{
This function displays V and non-central confidence interval
for the specified chi-square statistic.
}
\details{
V is calculated by finding the square root of chi-squared divided by the product
of the sample size and the degrees of freedom with the lowest value.

v = sqrt(x2 / (n * dfsmall))

\href{https://www.aggieerin.com/shiny-server/tests/chiv.html}{Learn more on our example page.}
}
\examples{
v.chi.sq(x2 = 4, n = 25, r = 2, c = 2, a = .05)
}
\keyword{chi-square}
\keyword{effect}
\keyword{size,}
