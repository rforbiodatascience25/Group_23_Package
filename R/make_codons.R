#' Convert a RNA sequence into codons
#'
#' @param rna_seq The input RNA sequence that is going to be converted to codons
#' @param start First position to start making the codons
#'
#' @returns A vector of codons derived from the RNA sequence
#' @export
#'
#' @examples
#' make_codons("AUGCGAUGC", start = 1)
#' #> "AUG" "CGA" "UGC"
make_codons <- function(rna_seq, start = 1){
  seq_length <- nchar(rna_seq)
  codons <- substring(rna_seq,
                      first = seq(from = start, to = seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_length, by = 3))
  return(codons)
}
