#' Generate markdown for projects
#'
#' Generate markdown block for `codensr` projects.
#'
#' @param project A `condensr` project object. If a link is available (i.e.
#' `!is.na(project$link)`), then a hyperlink will be inserted.
#'
#' @export
generate_markdown_for_projects <- function(project) {
    if (!"project" %in% class(project)) {
        stop("Input project must have class project")
    }

    if (is.na(project$link)) {
        cat(
            glue::glue("* {project$name}"),
            sep = "\n"
        )
    } else {
        cat(
            glue::glue("* [{project$name}]({project$link})"),
            sep = "\n"
        )
    }
}
