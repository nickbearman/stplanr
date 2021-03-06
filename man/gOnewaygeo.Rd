% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/gOverline.R
\name{gOnewaygeo}
\alias{gOnewaygeo}
\title{Aggregate flows so they become non-directional (by geometry - the slow way)}
\usage{
gOnewaygeo(x, attrib)
}
\arguments{
\item{x}{A SpatialLinesDataFrame}

\item{attrib}{A text string containing the name of the line's attribute to
aggregate or a numeric vector of the columns to be aggregated}
}
\value{
\code{gOnewaygeo} outputs a SpatialLinesDataFrame with single lines
and user-selected attribute values that have been aggregated. Only lines
with a distance (i.e. not intra-zone flows) are included
}
\description{
Flow data often contains movement in two directions: from point A to point B
and then from B to A. This can be problematic for transport planning, because
the magnitude of flow along a route can be masked by flows the other direction.
If only the largest flow in either direction is captured in an analysis, for
example, the true extent of travel will by heavily under-estimated for
OD pairs which have similar amounts of travel in both directions.
Flows in both direction are often represented by overlapping lines with
identical geometries (see \code{\link{flowlines}}) which can be confusing
for users and are difficult to plot.
}
\details{
This function aggregates directional flows into non-directional flows,
potentially halving the number of lines objects and reducing the number
of overlapping lines to zero.
}
\examples{
data("flowlines")
plot(flowlines)
singlelines <- gOnewaygeo(flowlines, attrib = 3:14)
plot(singlelines, lwd = 3, col = "red")
lines(singlelines) # check we've got the right lines
sum(singlelines$All)
nrow(singlelines)
}
\seealso{
Other Functions for manipulating flow data: \code{\link{gOnewayid}};
  \code{\link{gOverline}}; \code{\link{gSection}};
  \code{\link{islines}}; \code{\link{lineLabels}}
}

