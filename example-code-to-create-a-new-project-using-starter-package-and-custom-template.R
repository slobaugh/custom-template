

# load packages
library(dplyr)
library(starter)

# run code to create template object
source("H:/Biostatistics/Lobaugh/GitHub/custom-template/create-custom-template.R")

# specify local repo folder location
project_path <- file.path("H:/Biostatistics/Lobaugh/GitHub/repo-Epstein-Peterson-Brexu-MCL")

# Create project
starter::create_project(
  path = project_path,
  template = my_template,
  renv = NA
)
