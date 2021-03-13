sub_strand_gviz <- function(x) {
  #x is a vector of character
  x <- gsub("^1","+",x)
  x <- gsub("^-1","-",x)
  x <- gsub("0","*",x)
  #x <- factor(x, levels=c("+","-","*"))
  return(x)
}
