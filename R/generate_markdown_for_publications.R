#' Generate markdown for projects
#' 
#' Generate markdown block for `codensr` projects.
#' 
#' @param project A `condensr` project object. If a link is available (i.e.
#' `!is.na(project$link)`), then a hyperlink will be inserted.
generate_markdown_for_publications <- function(publication) {
    if (!"publication" %in% class(publication)) {
        stop("Input publication must have class publication")
    }

    if (is.na(publication$link)) {
        cat(
            glue::glue("* {publication$citation}")
        )
    } else {
        cat(
            glue::glue("* [{publication$link}]({publication$citation})")
        )
    }
}