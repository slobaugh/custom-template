
# Custom gt theme
my_gt_theme <- function(gt_table) {
  gt_table %>%
    gt::tab_options(
      table.font.size = gt::px(11),
      table.width = gt::pct(100),
      table.border.top.style = "solid",
      heading.background.color = "#F5F5F5",
      column_labels.font.weight = "bold",
      row_group.background.color = "#E8E8E8",
      column_labels.font.size = gt::px(11),
      data_row.padding = gt::px(2)
    )
}

#' Clean mixed date values
#'
#' Converts character values containing either:
#' \itemize{
#'   \item ISO dates in `"YYYY-MM-DD"` format
#'   \item Excel date serial numbers
#' }
#' into R `Date` objects.
#'
#' Excel serial numbers are interpreted using Excel's Windows date system,
#' with `"1899-12-30"` as the origin.
#'
#' @param x A character vector containing ISO dates, Excel serial numbers,
#'   or missing/invalid values.
#'
#' @return A vector of class `Date`. Values that cannot be converted return
#'   `NA`.
#'
clean_mixed_date <- function(x) {
  x <- trimws(as.character(x))

  # Try YYYY-MM-DD dates
  out <- as.Date(x, format = "%Y-%m-%d")

  # Convert remaining numeric values as Excel serial dates
  numeric_x <- suppressWarnings(as.numeric(x))
  failed <- is.na(out) & !is.na(numeric_x)

  out[failed] <- as.Date(
    numeric_x[failed],
    origin = "1899-12-30"
  )

  out
}

# Function to wrap strings after a certain number of characters while preserving explicit line breaks
wrapper <- function(x, ...) {
  # Split on existing line breaks first
  lines <- strsplit(x, "\n")[[1]]
  # Wrap each line independently
  wrapped_lines <- lapply(lines, function(line) {
    paste(strwrap(line, ...), collapse = "\n")
  })
  # Recombine with line breaks
  paste(wrapped_lines, collapse = "\n")
}
