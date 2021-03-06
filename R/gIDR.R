#' Generalized irreproducible discovery rate
#'
#' Reproducibility is essential for reliable scientific discovery.
#' Assessment of reproducibility often involves characterizing the concordance
#' of ranked candidate lists from replicate experiments. Li et al (2011) developed
#' a copula mixture model to assess the reproducibility of findings from
#' high-throughput experiments. The R package `idr` implemented the method.
#' Despite its broad application, it is not applicable when a large number of
#' ties are present or when a considerable proportion of candidates are unobserved
#' in one replicate, for example, being truncated by a significance threshold.
#' Here we present `gIDR`, that implements a method to handle discreteness and
#' truncation in the ranked lists using a latent variable approach. The generalized
#' method not only allows ties and partially replicated candidates, but also is
#' able to identify substantially more real signals and produce better calibrated
#' error rate than the existing method.
#'
#' @details
#' \itemize{
#'   \item{Package:    }{gIDR}
#'   \item{Type:    }{Package}
#'   \item{Version:    }{0.1.0}
#'   \item{Date:    }{2017-9-28}
#'   \item{License:    }{GPL-2}
#'   \item{LazyLoad:    }{Yes}
#' }
#'
#' The main function is \code{est.IDR.distrete()}. \code{est.IDR.distrete}
#' estimates the copula mixture model for discrete data and compute the posterior probability for each
#' observation to be irreproducible. With the function \code{select.IDR()} from \code{idr-package}, one can select the
#' reproducible observations.
#'
#' @author
#' Qunhua Li, Tao Yang
#'
#' Maintainer: Tao Yang <xadmyangt@gmail.com>
#'
#' @examples
#'
#' #load chip_seq data

#' data(chip_seq)
#' x = chip_seq[,1]
#' y = chip_seq[,2]
#'
#' # Initiation
#' mu <- 2.6
#' sigma <- 1.3
#' rho <- 0.8
#' p <- 0.7
#' eps <- 0.001
#' n.missing <- 0
#'
#' # Estimate parameters of mixture model
#' gidr.out <- est.IDR.discrete(x, y, mu, sigma, rho, p, eps, n.missing,
#'                              miss.sym = 0, as.single.loglik = 1,
#'                              as.single.em = 1, common.only=TRUE, labels=NULL)
#'
#' names(gidr.out)
#' select.gIDR(chip_seq, gidr.out$IDR.obs, 0.01)

"_PACKAGE"
