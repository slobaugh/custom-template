# {{folder_name}}

## Path to secure data
Use the text saved in `path_data.txt` for the `path` argument in `bstfun::path_data(path = path_data, "filename"))`

## Data version control
- Save data in a secure folder on a network drive with a subfolder indicating date data was received.
  - e.g. `"H:/ ... /Project Folder/secure_data/{{Sys.Date()}}/data_set.csv"`
- The file `data_date.txt` refers to the date folder in the `"secure_data"` folder. When new data arrives, save it in a new date folder and update `data_date.txt`.
- Use `bstfun::path_data(path = path_data, "filename"))` to get the path to the data in R.

## Project summary
See `project_summary.md`.

## Project log

**{{Sys.Date()}}**  
Created project folder
