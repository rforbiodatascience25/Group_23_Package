#' Transcription
#'
#' @param dna_seq character sequence to transcribe into RNA
#'
#' @returns RNA sequence where all Thymine have been converted into Uracil
#' @export
#'
#' @examples
#' transcription('ACACGTAGTTA')
transcription <- function(dna_seq){
  rna_seq <- gsub("T", "U", dna_seq)
  return(rna_seq)
}
