% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/gOverline.R
\name{gOverline}
\alias{gOverline}
\title{Convert series of overlapping lines into a route network}
\usage{
gOverline(sldf, attrib, fun = sum, na.zero = FALSE)
}
\arguments{
\item{sldf}{A SpatialLinesDataFrame with overlapping elements}

\item{attrib}{A text string corresponding to a named variable in \code{sldf}}

\item{fun}{The function used to aggregate the grouped values (default: sum)}

\item{na.zero}{Sets whether aggregated values with a value of zero are removed.}
}
\description{
This function takes a series of Lines stored in a
 \code{SpatialLinesDataFrame}
and converts these into a single route network.
}
\examples{
\dontrun{
data(routes_fast)
data(cents)
rnet <- gOverline(sldf = routes_fast[1:7,], attrib = "length")
plot(rnet)
points(cents)
lineLabels(sldf = rnet, "length")
sum(routes_fast$length[1:7], na.rm = TRUE) # verify highest flow
data(flowlines)
plot(flowlines)
aggflow <- gOverline(flowlines, attrib = "All")
nrow(aggflow)
aggflow2 <- gOverline(flowlines, attrib = "All", na.zero = TRUE)
plot(aggflow2) # 8 lines
sel <- as.logical(colSums(gEquals(flowlines, aggflow2, byid = TRUE)))
flowlines_sub <- flowlines[!sel,]
plot(flowlines_sub)
flowlines_2way <- flowlines[sel,]
library(maptools)
flowlines_2way <- spChFIDs(flowlines_2way, as.character(100001:(nrow(flowlines_2way) + 100000)))
flowlines_1way <- maptools::spRbind(flowlines_sub, flowlines_2way)
overlaps <- over()
nrow(overlaps)
}
}
\author{
Barry Rowlingson
}
\references{
Rowlingson, B (2015). Overlaying lines and aggregating their values for
 overlapping segments. Reproducible question from
 \url{http://gis.stackexchange.com}. See \url{http://gis.stackexchange.com/questions/139681/overlaying-lines-and-aggregating-their-values-for-overlapping-segments}.
}
\seealso{
Other Functions for manipulating flow data: \code{\link{gOnewaygeo}};
  \code{\link{gOnewayid}}; \code{\link{gSection}};
  \code{\link{islines}}; \code{\link{lineLabels}}
}

