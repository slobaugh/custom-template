

# load packages
library(dplyr)
library(starter)

# run code to create template object
source("H:/Biostatistics/Lobaugh/GitHub/custom-template/create-custom-template.R")

# specify local repo folder location
project_path <- file.path("H:/Biostatistics/Radiology/Projects/For Stephanie/Github/Akin-ccRCC-radiomics")

# Create project
starter::create_project(
  path = project_path,
  template = my_template,
  renv = NA
)
