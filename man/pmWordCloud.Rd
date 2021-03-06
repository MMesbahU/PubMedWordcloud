\name{pmWordCloud}
\alias{pmWordCloud}
\title{PubMed wordcloud using function 'plotWordcloud' of package {GOsummaries}}
\usage{
pmWordCloud(abstracts, rot.per = 0.3, max_min = c(1, 0.1), scale = 0.2,
  min.freq = 2, max.words = Inf, random.order = FALSE,
  colors = brewer.pal(8, "Dark2"), algorithm = c("circle", "leftside",
  "rightside"), tryfit = TRUE, dimensions = unit(c(1, 1), "npc"))
}
\arguments{
  \item{abstracts}{output of cleanAbstracts, or a data
  frame with one colume of 'word' and one colume of
  'freq'.}

  \item{rot.per}{proportion words with 90 degree rotation}

  \item{max_min}{relative scales to adjust the size
  difference between largest and smallest word, by default
  the largest word is written with 10 times as large font
  than the smallest}

  \item{scale}{a fraction of the available space on figure
  that will be covered with the bounding boxes of words}

  \item{min.freq}{words with frequency below min.freq will
  not be plotted}

  \item{max.words}{Maximum number of words to be plotted.
  least frequent terms dropped}

  \item{random.order}{plot words in random order. If false,
  they will be plotted in decreasing frequency}

  \item{colors}{vector of colors fro the words. This vector
  will be extrapolated into as many colors as needed,
  starting with the first color for lower frequencies and
  ending with last color for higher frequencies.}

  \item{algorithm}{algorithm to find positions of words
  possible values: "circle", "leftside" and "rightside".}

  \item{tryfit}{if TRUE the algorithm checks if all words
  fit to the figure, if not it tries gradually smaller
  values of scale parameter until everything fits}

  \item{dimensions}{a two element vector of units giving
  the width and height of the word cloud respectively}
}
\description{
grid based wordcloud drawing function
}
\details{
This function just call 'plotWordcloud' from package
{GOsummaries}. See package {GOsummaries} for more details
about the parameters.
}
\examples{
Abs=getAbstracts(c("22693232", "22564732", "22301463", "22015308", "21283797", "19412437"))
cleanAbs=cleanAbstracts(Abs)
pmWordCloud(cleanAbs)
}
\seealso{
\code{\link{plotWordCloud}}
}

