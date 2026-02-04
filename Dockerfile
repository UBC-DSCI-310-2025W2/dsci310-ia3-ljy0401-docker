# Choose a base image to build off
FROM rocker/rstudio:4.4.2

# Install the "remotes" package first so that we can use the 
# `remotes::install_version()` function to pin the version
RUN Rscript -e "install.packages('remotes', repos='https://cloud.r-project.org')"

# Add the latest `cowsay` R package (version 1.2.2 as of Jan. 2026)
# using the `remotes::install_version()` function to pin the version
RUN Rscript -e "remotes::install_version('cowsay', version='1.2.2', repos='https://cloud.r-project.org')" 