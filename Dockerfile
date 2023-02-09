FROM rocker/rstudio:4.1.3

RUN Rscript -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN Rscript -e "library(remotes)"
RUN Rscript -e "remotes::install_version('cowsay', version = '0.8.0')"
