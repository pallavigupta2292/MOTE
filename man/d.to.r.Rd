% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/d.to.r.R
\name{d.to.r}
\alias{d.to.r}
\title{r and Coefficient of Determination (R2) from d}
\usage{
d.to.r(d, n1, n2, a = 0.05)
}
\arguments{
\item{d}{effect size statistic}

\item{n1}{sample size group one}

\item{n2}{sample size group two}

\item{a}{significance level}
}
\value{
Provides the effect size (Cohen's d) with associated confidence intervals,
the t-statistic, the confidence intervals associated with the means of each group, as well as the
standard deviations and standard errors of the means for each group.

\item{r}{correlation coefficient}
\item{rlow}{lower level confidence interval r}
\item{rhigh}{upper level confidence interval r}
\item{R2}{coefficient of determination}
\item{R2low}{lower level confidence interval of R2}
\item{R2high}{upper level confidence interval of R2}
\item{se}{standard error}
\item{n}{sample size}
\item{dfm}{degrees of freedom of mean}
\item{dfe}{degrees of freedom error}
\item{t}{t-statistic}
\item{F}{F-statistic}
\item{p}{p-value}
}
\description{
Calculates r from d and then translates r to r2 to calculate
the non-central confidence interval for r2 using the F distribution.
}
\details{
The correlation coefficient (r) is calculated by dividing Cohen's d
by the square root of the total sample size squared - divided
by the product of the sample sizes of group one and group two.

r = d / sqrt(d^2 + (n1 + n2)^2 / (n1*n2))

\href{https://www.aggieerin.com/shiny-server/tests/dtor.html}{Learn more on our example page.}
}
\examples{
d.to.r(d = .5, n1 = 50, n2 = 50, a = .05)
}
\keyword{correlation}
\keyword{effect}
\keyword{size,}
