# Read data
#### import data ####
tdt <- fread(file="./data/asd.290.IBD_cleaned.tdt.gz", header=TRUE)
as_tibble(tdt) %>%
  arrange(P) %>%
  mutate(CHR=sub_chr_ensembl(CHR))%>%
  mutate(LOG=-log10(P)) %>%
  mutate_at("CHR", ~gsub("^","chr",.)) -> tdt
recomb.rate <- fread(file="./data/genetic_map_GRCh38_merged.tab.gz", header=TRUE)
# hg38; ensembl database.
gene.ensembl <- useMart(biomart="ENSEMBL_MART_ENSEMBL",
                        dataset="hsapiens_gene_ensembl")

