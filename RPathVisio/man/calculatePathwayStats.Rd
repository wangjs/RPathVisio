\name{calculatePathwayStats}
\alias{calculatePathwayStats}
\title{
Perform pathway statistics
}
\description{
Functions for performing over representation analysis on pathways
}
\usage{
calculatePathwayStats(gexname, dbname, criteria, host="localhost", port=9000, pwypath=NA, gexpath=NA, dbpath=NA, outputdir=NA)
}
\arguments{
 \item{gexname}{name of the gex file, which has the data to be analysed(if there's no "." in the name, ".pgex" is used as file extension)}
 \item{dbname}{name of the database file(if there's no "." in the name, ".bridge" is used as file extension)}
 \item{criteria}{the criteria to be used to calculate the Z score, for eg: '[P.Value]<0.01'}
 \item{pwypath}{folder in which the pathway files are stored}
 \item{gexpath}{folder in which the gex file is stored}
 \item{dbpath}{folder in which the database file is stored}
 \item{outputdir}{name of the directory where the results should be exported to}
 \item{host}{server hosting the PathVisioRPC program}
 \item{port}{communication port on which to contact PathVisioRPC}
}
\note{
When no directory is given as path or outputdir, the working directory is used. 
}
\examples{
##create a .pgex file by importing data
\dontrun{importData("example",dataframe,"database")}

##calculate Z-score statistics for the pathway files in the current working directory
\dontrun{calculatePathwayStats("example","database","[PValue]<0.01")}
}
\author{
Anwesha Bohler
Egon Willighagen
Christ Leemans
}
