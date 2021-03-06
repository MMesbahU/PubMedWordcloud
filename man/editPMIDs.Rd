\name{editPMIDs}
\alias{editPMIDs}
\title{edit PMIDs}
\usage{
editPMIDs(x, y, method = c("add", "exclude"))
}
\arguments{
  \item{x}{output of getPMIDs, or a set of PMIDs}

  \item{y}{output of getPMIDs, or a set of PMIDs}

  \item{method}{can be 'add' (default) or 'exclude'. see
  details.}
}
\description{
add two sets of PMIDs together, or exclude one set PMIDs
from another set of PMIDs.
}
\details{
when method is 'add', PMIDs in 'x' and 'y' will be
combined. when method is 'exclude', PMIDs in 'y' will be
excluded from 'x'.
}
\examples{
# pmid1=getPMIDs(author="Yan-Hui Fan",dFrom=2007,dTo=2013,n=10)
# rm1="22698742"
# pmids1=editPMIDs(x=pmid1,y=rm1,method="exclude")

# pmid2=getPMIDs(author="Yanhui Fan",dFrom=2007,dTo=2013,n=10)
# rm2="20576513"
# pmids2=editPMIDs(x=pmid2,y=rm2,method="exclude")

# pmids=editPMIDs(x=pmids1,y=pmids2,method="add")
}
\seealso{
\code{\link{getPMIDs}}
}

