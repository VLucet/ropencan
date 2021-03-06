% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/govcan_get_record.R
\name{govcan_get_record}
\alias{govcan_get_record}
\title{Query OpenCan portal for a specific record (i.e. a CKAN package)}
\usage{
govcan_get_record(
  record_id,
  format_resources = FALSE,
  only_resources = FALSE,
  ... = NULL
)
}
\arguments{
\item{record_id}{(character) The id of the wanted dataset, which can be found with a
search using govcan_search, or on \url{https://open.canada.ca/en}. The id is of the form
"4a2929ce-d6b1-49b0-b520-63be0859c552"}

\item{format_resources}{(logical) Whether the function should return a formatted output
of the resources as a tibble or an unformatted list of resources (default is \code{FALSE})}

\item{only_resources}{(logical) Whether the function should return only the resources
from the record (list of files available for download). Resources can also be accessed
with govcan_show_ressources}

\item{...}{More arguments to be passed on to \code{\link[ckanr:package_show]{ckanr::package_show()}}}
}
\value{
If only_resources is \code{TRUE}, will return only the list of data files (resources)
associated with the record queried else it will return all the output of the CKAN query.
If format_resources is \code{TRUE}, the resources are formatted to a tibble.
}
\description{
This function wraps \code{\link[ckanr:package_show]{ckanr::package_show()}} to access a specific record
(or package, in CKAN terms) given its unique id
}
\examples{
\dontrun{
pid <- "b7ca71fa-6265-46e7-a73c-344ded9212b0"
pkg <- govcan_get_record(pid)
}

}
