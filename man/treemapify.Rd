% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/treemapify.R
\name{treemapify}
\alias{treemapify}
\title{Generate coordinates for a treemap}
\usage{
treemapify(data, area, fill, group = FALSE, label = FALSE, xlim = c(0,
  100), ylim = c(0, 100))
}
\arguments{
\item{data}{a tidy data frame, containing at least variables to be mapped to
area (size of rect) and fill (fill colour of rect).}

\item{area}{variable to be mapped to area; must be a column in data}

\item{fill}{variable to be mapped to fill; must be a column in data}

\item{group}{(optional) variable to be mapped to group; must be a column in
the data frame}

\item{label}{(optional) variable to be used as the label for each
observation; must be a column in the data frame}

\item{xlim,ylim}{(optional) two-element vectors specifying the x and y
limits of the area in which the rects will be placed}
}
\description{
Takes a data frame of observations, with variables mapped to area and fill
colour, and produces the coordinates for a treemap expressing these
observations and mappings.  These coordinates can be used to draw a
customised treemap (recommended) or passed directly to the "ggplotify"
function to produce an exploratory projection.

Input data frame must be in tidy format (see article by Hadley Wickham,
below), i.e. each row must represent a single observation and each column a
single variable.  The area and fill parameters are mandatory; grouping and
label factors are optional.  Note that while adding a label will not change
the treemap layout, adding a group will, as observations from the same group
will be kept together.

Rect placement proceeds from the bottom left corner, alternating between
moving rightwards and moving upwards.  See Bruls et al. 1999 for the full
algorithm.
}
\references{
treemapify uses the Squarified Treemap algorithm of Mark Bruls, Kees Huizing
and Jarke van Wijk:

Bruls, M., Huizing, K., & van Wijk, J. (1999). Squarified Treemaps (pp.
33-42). Presented at the In Proceedings of the Joint Eurographics and IEEE
TCVG Symposium on Visualization.

\url{http://www.win.tue.nl/~vanwijk/stm.pdf}

"Tidy Data" is described by Hadley Wickham in an unpublished manuscript:
\url{http://vita.had.co.nz/papers/tidy-data.pdf}
}
\seealso{
Other treemapify: \code{\link{ggplotify}}
}

