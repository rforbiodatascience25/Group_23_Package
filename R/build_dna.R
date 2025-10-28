#' Title
#' Makes a DNA sequence from a string of nucleotides
#' @param sequence_lenght an integer to indicate the number of nucleotides used, final lenght of the dna sequence
#'
#' @returns a string of nucleotides
#' @export
#'
#' @examples
#'
#' sequence_lenght <- 12
#' build_dna(sequence_lenght)

build_dna <- function(sequence_length){
  nucleotides <- sample(c("A", "T", "G", "C"), size = sequence_length, replace = TRUE)
  dna_seq <- paste0(nucleotides, collapse = "")
  return(dna_seq)
}

