generate_markdown_for_projects <- function(project) {
    if (!"project" %in% class(project)) {
        stop("Input project must have class project")
    }

    cat(
        glue::glue("* {project$name}")
    )
}