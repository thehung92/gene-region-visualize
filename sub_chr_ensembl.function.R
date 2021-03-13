sub_chr_ensembl <- function(x) {
  # x is a string or a vector of string
  x <- gsub("23","X", x)
  x <- gsub("24","Y", x)
  x <- gsub("25","MT",x)
  return(x)
}
