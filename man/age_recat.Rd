% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/recat-NTS.R
\name{age_recat}
\alias{age_recat}
\alias{age_recat2}
\alias{disab_recat}
\title{Recategorise UK National Travel Survey factor variables}
\usage{
age_recat(a)

age_recat2(a)

disab_recat(a)
}
\arguments{
\item{a}{The factor variable supplied by the UK's NTS}
}
\value{
A factor with new categories for analysis
}
\description{
\code{age_recat}, \code{age_recat2} and \code{disab_recat}
are used to re-categorise the UK National Travel Survey (NTS) age
band and disability variables for comparison with other datasets.
See \url{http://discover.ukdataservice.ac.uk/series/?sn=2000037}
for more on accessing the NTS.
}
\details{
See Crawford and Lovelace (2015) for an application of these functions.
}
\examples{
age_recat("70 + years")
}
\references{
Crawford, F., and Lovelace, R. (2015). The benefits of getting England cycling. Retrieved from http://www.ctc.org.uk/news/20150120-research-shows-growth-cycling-worth-%C2%BC-trillion-england%E2%80%99s-economy
}

