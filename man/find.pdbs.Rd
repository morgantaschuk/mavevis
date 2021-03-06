% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/orthologs.R
\name{find.pdbs}
\alias{find.pdbs}
\title{Find PDB structures for a Uniprot accession}
\usage{
find.pdbs(acc, filterRange = NA)
}
\arguments{
\item{acc}{the Uniprot accession}
}
\value{
a \code{data.frame} with the following columns:
\itemize{
  \item pdb: the PDB accession of the structure
  \item method: the experimental method for this structure, e.g NMR, X-ray or Model
  \item resolution: the resolution of this structure, in Angstrom.
  \item mainChains: a /-separated list of chain IDs that correspond to the protein
     with the given Uniprot accession.
  \item start: the first amino acid of the protein represented in the structure
  \item end: the last amino acid of the protein represented in the structure
  \item partners: a comma-separated list of interaction partners if the structure is 
     of a complex. Each item follows the syntax chainID=UniprotID/ProteinName
}
}
\description{
Finds PDB structures that contain the protein indicated by the given Uniprot accession.
Checks for a local cache file of previous results. If such a cache exists, the pre-calculated
results will be returned, otherwise queries to Uniprot and PDB will be made.
}
