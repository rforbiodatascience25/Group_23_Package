#' Amino Acids Frequency Plot
#'
#' @param aa_chain a chain of amino acids as a string
#'
#' @returns Show a plot which count how many times each AA appear in the amino acids chain given as input
#' @export
#'
#' @examples
#' if (interactive()){
#'       aa_chain <- "AWLPPHWLLQRI"
#'       aa_frequency_plot(aa_chain)
#'       }
aa_frequency_plot <- function(aa_chain){
  aas <- aa_chain |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(aas, function(amino_acid) stringr::str_count(string = aa_chain, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Amino_Acids"]] <- rownames(counts)

  count_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_Acids, y = Counts, fill = Amino_Acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(count_plot)
}
