#' Translation
#' Translate mRNA codons into the corresponding amino acids chain
#'
#'
#' @param codons a vector containing codons as strings
#'
#' @returns a single string containing all the amino acids
#' @export
#'
#' @examples
#'
#' codons <- c("AUG", "CCU","CAA", "CGA", "UGG", "GGC")
#' translation(codons)
#'
translation <- function(codons){
  aa_chain <- paste0(codon_table[codons], collapse = "")
  return(aa_chain)
}
