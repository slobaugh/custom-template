
# Metadata for template
# resource: https://www.danieldsjoberg.com/starter/articles/create_project.html#custom_template

library(here)

my_template <-
  list(
    # README
    readme = rlang::expr(list(
      template_filename = here::here("template-files/README.md"),
      filename = "README.md",
      glue = TRUE
    )),
    # Project summary form
    project_summary = rlang::expr(list(
      template_filename = here::here("template-files/project_summary.md"),
      filename = "project_summary.md",
      glue = TRUE
    )),
    # SAP
    readme = rlang::expr(list(
      template_filename = here::here("template-files/SAP.md"),
      filename = "SAP.md",
      glue = TRUE
    )),
    # rproj
    rproj = rlang::expr(list(
      template_filename = system.file("project_templates/default_rproj.Rproj", package = "starter"),
      filename = glue::glue("{folder_name}.Rproj"),
      glue = FALSE
    )),
    # path_data text file
    path_data_file = rlang::expr(list(
      template_filename = here::here("template-files/path_data.txt"),
      filename = "path_data.txt",
      glue = TRUE
    )),
    # data_date text file
    data_date_file = rlang::expr(list(
      template_filename = here::here("template-files/data_date.txt"),
      filename = "data_date.txt",
      glue = TRUE
    )),
    # gitignore
    gitignore = rlang::expr(list(
      template_filename = here::here("template-files/.gitignore"),
      filename = ".gitignore",
      glue = TRUE
    )),
    # templates for formatting citations. This is from the European Urology journal.
    citation_template = rlang::expr(list(
      template_filename = here::here("template-files/templates/european-urology.csl"),
      filename = "templates/european-urology.csl",
      glue = FALSE
    )),
    # templates for formatting citations. Not sure what this .bib file does.
    bib_template = rlang::expr(list(
      template_filename = here::here("template-files/templates/references.bib"),
      filename = "templates/references.bib",
      glue = FALSE
    )),
    # template for Setup script
    script_setup = rlang::expr(list(
      template_filename = here::here("template-files/001-setup.Rmd"),
      filename = "001-setup.Rmd",
      glue = TRUE
    )),
    # template for Analysis script
    script_analysis = rlang::expr(list(
      template_filename = here::here("template-files/020-analysis.Rmd"),
      filename = "020-analysis.Rmd",
      glue = TRUE
    )),
    # template for Report script
    script_report = rlang::expr(list(
      template_filename = here::here("template-files/030-report.Rmd"),
      filename = "030-report.Rmd",
      glue = TRUE
    ))
  )

# Name template
attr(my_template, "label") <- "SL MSK template"
