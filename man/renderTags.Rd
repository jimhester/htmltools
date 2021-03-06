% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/tags.R
\name{renderTags}
\alias{doRenderTags}
\alias{renderTags}
\title{Render tags into HTML}
\usage{
renderTags(x, singletons = character(0), indent = 0)

doRenderTags(x, indent = 0)
}
\arguments{
\item{x}{Tag object(s) to render}

\item{singletons}{A list of \link{singleton} signatures to consider already
rendered; any matching singletons will be dropped instead of rendered.
(This is useful (only?) for incremental rendering.)}

\item{indent}{Initial indent level, or \code{FALSE} if no indentation should
  be used.}
}
\value{
\code{renderTags} returns a list with the following variables:
\describe{
  \item{\code{head}}{An \code{\link{HTML}} string that should be included in
    \code{<head>}.
  }
  \item{\code{singletons}}{Character vector of singleton signatures that are
    known after rendering.
  }
  \item{\code{dependencies}}{A list of \link[=resolveDependencies]{resolved}
    \code{\link{htmlDependency}} objects.
  }
  \item{\code{html}}{An \code{\link{HTML}} string that represents the main
    HTML that was rendered.
  }
}

\code{doRenderTags} returns a simple \code{\link{HTML}} string.
}
\description{
Renders tags (and objects that can be converted into tags using
\code{\link{as.tags}}) into HTML. (Generally intended to be called from web
framework libraries, not directly by most users--see
\code{\link{print.html}(browse=TRUE)} for higher level rendering.)
}
\details{
\code{doRenderTags} is intended for very low-level use; it ignores
  singleton, head, and dependency handling, and simply renders the given tag
  objects as HTML.
}

