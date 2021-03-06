\name{cleanAbstracts}
\alias{cleanAbstracts}
\title{clean data}
\usage{
cleanAbstracts(abstracts, rmNum = TRUE, tolw = TRUE, toup = FALSE,
  rmWords = TRUE, yrWords = NULL, stemDoc = FALSE)
}
\arguments{
  \item{abstracts}{output of getAbstracts, or just a
  paragraph of text}

  \item{rmNum}{Remove the text document with any numbers in
  it or not}

  \item{tolw}{Translate characters in character vectors to
  lower case or not}

  \item{toup}{Translate characters in character vectors to
  upper case or not}

  \item{rmWords}{Remove a set of English stopwords (e.g.,
  'the') or not}

  \item{yrWords}{A character vector listing the words to be
  removed.}

  \item{stemDoc}{Stem words in a text document using
  Porter's stemming algorithm.}
}
\description{
remove Punctuations, remove Numbers, Translate characters
to lower or upper case, remove stopwords, remove user
specified words, Stemming words.
}
\examples{
Abs=getAbstracts(c("22693232", "22564732"))
cleanAbs=cleanAbstracts(Abs)

text="Jobs received a number of honors and public recognition."
cleanD=cleanAbstracts(text)
}
\seealso{
\code{\link{getAbstracts}}
}

