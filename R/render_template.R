render_template <- function(file, template_folder, target_path, output_name = NA, data = list()) {
    message("Creating ", file.path(target_path, template_folder, file))
    template <- system.file(file.path("rmarkdown", "templates", template_folder, file),
        package = "condensr"
    )
    template <- paste(readLines(template, encoding = "UTF-8"), collapse = "\n")
    output <- whisker::whisker.render(template, data)
    if (!fs::dir_exists(target_path)) {
        dir.create(target_path, recursive = TRUE, showWarnings = FALSE)
    }

    if (is.na(output_name)) {
        output_name <- file
    }

    writeLines(output, file.path(target_path, output_name), useBytes = TRUE)
}