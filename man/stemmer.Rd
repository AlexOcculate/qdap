% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/stemmer.R
\name{stemmer}
\alias{stem2df}
\alias{stem_words}
\alias{stemmer}
\title{Stem Text}
\usage{
stemmer(text.var, rm.bracket = TRUE, capitalize = TRUE, warn = TRUE,
  char.keep = "~~", ...)

stem_words(...)

stem2df(dataframe, text.var, stem.name = NULL, ...)
}
\arguments{
\item{text.var}{The text variable.  In \code{\link[qdap]{stemmer}} this is a
vector text string. For \code{\link[qdap]{stem2df}} this is a character
vector of length one naming the text column.}

\item{rm.bracket}{logical.  If \code{TRUE} brackets are removed from the text.}

\item{capitalize}{logical.  If \code{TRUE} selected terms are capitalized.}

\item{warn}{logical.  If \code{TRUE} warns about rows not ending with
standard qdap punctuation endmarks.}

\item{char.keep}{A character vector of symbols that should be kept within
sentences.}

\item{dataframe}{A dataframe object.}

\item{stem.name}{A character vector of length one for the stemmed column.  If
\code{NULL} defaults to \code{"stem.text"}.}

\item{\dots}{Various: \cr
\emph{\code{stemmer} - Other arguments passed to
\code{\link[qdap]{capitalizer}}} \cr
\emph{\code{stem_words} - Words or terms.} \cr
\emph{\code{stem2df} - Other arguments passed to
\code{\link[qdap]{stemmer}}}}
}
\value{
\code{stemmer} - returns a character vector with stemmed text.

\code{stem_words} - returns a vector of individually stemmed words.

\code{stem2df} - returns a dataframe with a character vector with
stemmed text.
}
\description{
\code{stemmer} - Stems a vector of text strings (A wrapper for the pkg{tm}
package's \code{\link[tm]{stemDocument}}.

\code{stem_words} - Wrapper for stemmer that stems a vector of words.

\code{stem2df} - Wrapper for stemmer that stems a vector of text strings
and returns a dataframe with the vector added..
}
\examples{
\dontrun{
#stemmer EXAMPLE:
stemmer(DATA$state)
out1 <- stemmer(raj$dialogue)
htruncdf(out1, 20, 60)

#stem_words EXAMPLE:
stem_words(doggies, jumping, swims)

#stem2df EXAMPLE:
out2 <- stem2df(DATA, "state", "new")
truncdf(out2, 30)
}
}
\seealso{
\code{\link[qdap]{capitalizer}}
}
\keyword{stem}

