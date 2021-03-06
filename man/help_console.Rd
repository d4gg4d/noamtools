\name{help_console}
\alias{help_console}
\title{Return the text of a help file as a string}
\usage{
  help_console(topic,
    format = c("text", "html", "latex", "Rd"),
    lines = NULL, before = NULL, after = NULL)
}
\arguments{
  \item{topic}{The help topic, quoted or not}

  \item{format}{the format of the help topic. HTML and
  latex may be useful when creating documents of this type,
  in which case the output should be written "as is" rather
  than in a code or verbatim environment}

  \item{lines}{Optional. An integer vector specifying which
  lines to print}

  \item{before,after}{Text to insert before or after the
  help file, such as \code{<quote>} and \code{</quote>} for
  printing the text as quoted HTML}
}
\description{
  This function returns the contents of an R help file to
  the console as a character vector, printing it for easy
  reading.  It is intended for dynamic documents where you
  want to show part of a help file in the course of a
  tutorial. For this usage, you may wish to temporarily
  assign \code{help_console} to \code{help} using
  non-printed code chunk.
}
\details{
  This function uses non-exported functions in the
  \code{tools} package, so it may not work with future
  updates.
}
\examples{
help_console(c)
txt <- help_console(c)
help_console(optim, "html", lines=1:25, before="<quote>", after="</quote>")
}

