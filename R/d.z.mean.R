#' d for Z-test from Population Mean and SD
#'
#' This function displays d for Z-test with the
#' population mean and standard deviation.
#' The normal confidence interval is also provided.
#'
#' d is calculated by deducting the population mean from the sample study mean
#' and dividing by the alpha level.
#'
#'      d = (m1 - mu) / sig
#'
#' \href{https://www.aggieerin.com/shiny-server/tests/zm.html}{Learn more on our example page.}
#'
#' @param mu population mean
#' @param m1 sample study mean
#' @param sig population standard deviation
#' @param sd1 standard deviation from the study
#' @param n sample size
#' @param a significance level
#' @return The effect size (Cohen's d) with associated confidence intervals
#' and relevant statistics.
#'
#' \item{d}{effect size}
#' \item{dlow}{lower level confidence interval d value}
#' \item{dhigh}{upper level confidence interval d value}
#' \item{M1}{mean of sample}
#' \item{sd1}{standard deviation of sample}
#' \item{se1}{standard error of sample}
#' \item{M1low}{lower level confidence interval of the mean}
#' \item{M1high}{upper level confidence interval of the mean}
#' \item{Mu}{population mean}
#' \item{Sigma}{standard deviation of population}
#' \item{se2}{standard error of population}
#' \item{z}{z-statistic}
#' \item{p}{p-value}
#' \item{n}{sample size}
#'
#' @keywords effect size, z-test
#' @import MBESS
#' @import stats
#' @examples
#'
#' d.z.mean(mu = 20, m1 = 17, sig = 4, sd1 = 5, n = 100, a = .05)


d.z.mean <- function (mu, m1, sig, sd1, n, a = .05) {

  d <- (m1 - mu) / sig
  se1 <- sig / sqrt(n)
  se2 <- sd1 / sqrt(n)
  dlow <- d-qnorm(a/2, lower.tail = F)*sig
  dhigh <- d+qnorm(a/2, lower.tail = F)*sig
  z <- (m1 - mu) / se1
  p <- pnorm(abs(z), lower.tail = FALSE)*2
  M1low <- m1 - se2 * qnorm(a/2, lower.tail = FALSE)
  M1high <- m1 + se2 * qnorm(a/2, lower.tail = FALSE)

  output = list("d" = d, #d stats
                "dlow" = dlow,
                "dhigh" = dhigh,
                "M1" = m1, #level 1 stats
                "sd1" = sd1,
                "se1" = se2,
                "M1low" = M1low,
                "M1high" = M1high,
                "Mu" = mu,#population stats
                "Sigma" = sig,
                "se2" = se1,
                "z" = z,
                "p" = p,
                "n" = n #sample stats
                )

  return(output)
  }
