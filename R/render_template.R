#' Copy Rmd template to target path
#'
#' Copies a file from the `rmarkdown/templates` folder to a target path
#'
#' @param file File name to copy.
#' @param template_folder Folder name of file.
#' @param target_path Path to copy to.
#' @param output_name Name of copies file. If `NA`, name will be the same as
#' input file name.
#' @param data List of additional metadata. Must have at least element `name`
#' and `title`.
#' @return NULL
#'
render_template <- function(file, template_folder, target_path, output_name = NA, data = list()) {
    if (is.na(output_name)) {
        output_name <- file
    }

    message("Creating ", file.path(target_path, output_name))
    template <- system.file(file.path("quarto", "templates", template_folder, file),
        package = "condensr"
    )
    template <- paste(readLines(template, encoding = "UTF-8"), collapse = "\n")
    output <- whisker::whisker.render(template, data)
    if (!fs::dir_exists(target_path)) {
        dir.create(target_path, recursive = TRUE, showWarnings = FALSE)
    }


    writeLines(output, file.path(target_path, output_name), useBytes = TRUE)

    return(invisible(NULL))
}
