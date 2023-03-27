#' Generate markdown for publications
#'
#' Generate markdown block for `codensr` publications.
#'
#' @param publication A `condensr` publication object. If a link is available (i.e.
#' `!is.na(publication$link)`), then a hyperlink will be inserted.
#'
#' @export
generate_markdown_for_publications <- function(publication) {
    if (!"publication" %in% class(publication)) {
        stop("Input publication must have class publication")
    }

    if (is.na(publication$link)) {
        cat(
            glue::glue("* {publication$citation}\n")
        )
    } else {
        cat(
            glue::glue("* [{publication$citation}]({publication$link})\n")
        )
    }
}
