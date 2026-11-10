This repo contains code and template files that are used to create a new project folder with custom files following the workflow described in the documentation for [`starter::create_project`](https://www.danieldsjoberg.com/starter/articles/create_project.html#custom_template).

Workflow:

1. Create your template files (see the files in `template-files`).
2. Create a metadata object that stores information about each template file. The metadata is stored as a named list: one element in the list per file in the template. See `create-custom-template.R`.
3. Call `starter::create_project` to create a project folder containing your custom files, which are modeled after the template files. See `example-code-to-create-a-new-project-using-starter-package-and-custom-template.R`.
