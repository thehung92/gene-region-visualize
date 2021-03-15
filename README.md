# gene-region-visualize
<!-- badges: start -->
[![Blog post](https://img.shields.io/badge/rostrum.blog-post-008900?labelColor=000000&logo=data%3Aimage%2Fgif%3Bbase64%2CR0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh%2BQQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/2019/06/11/r-repo-template/)
<!-- badges: end -->


## Purpose

An opinionated [GitHub repository template](https://github.blog/2019-06-06-generate-new-repositories-with-repository-templates/) to begin a simple analytical project with R and RStudio.

You should [read this blog post](https://www.rostrum.blog/2019/06/11/r-repo-template/) for a more in-depth explanation of this repo.

## How to use

Click the green 'Use this template' button from [in this repo](https://github.com/matt-dray/analysis-template) to copy it.

<img src="https://www.rostrum.blog/post/2019-06-11-a-repo-template-for-r-analysis_files/use-this.png" alt="The 'Use this template' button found in a GitHub repository template" width="200px">

[You can also click here](https://github.com/matt-dray/r-analysis-template/generate) to open the page for copying the repo.

## File tree

```
.
├── 00_library.R
├── 01_read.R
├── 02_prep-components.R
├── 03_main-loop.R
├── LICENSE
├── R
│   ├── README.md
│   └── functions.R
├── README.md
├── data
│   ├── README.md
│   ├── asd.290.IBD_cleaned.tdt.gz
│   ├── genetic_map_GRCh38_merged.tab.gz
│   ├── matrix.r2.unrelated.variant1.txt
│   ├── matrix.r2.unrelated.variant2.txt
│   ├── matrix.r2.unrelated.variant3.txt
│   └── matrix.r2.unrelated.variant4.txt
├── docs
│   ├── README.md
│   ├── attempt3.0.Rmd
│   └── attempt3.0.nb.html
├── ext
│   └── README.md
├── gviz_plot_loop_2.R
├── output
│   ├── 4f_variant_1.chrX_107597826.png
│   └── README.md
├── r-analysis-template.Rproj
├── sub_chr_ensembl.function.R
└── sub_strand_gviz.function.R
```
