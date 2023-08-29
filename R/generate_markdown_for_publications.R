#' Generate markdown for publications
#'
#' Generate markdown block for `codensr` publications.
#'
#' @param publication A `condensr` publication object. If a link is available (i.e.
#' `!is.na(publication$link)`), then a hyperlink will be inserted.
#' @return No return value, function will output text directly into markdown
#' document using `cat`.
#' 
#' @examples
#' example_publication <- publication(
#'     title = "Joe's Blogging Paper",
#'     related_staff = c("joe-bloggs"),
#'     link = NA,
#'     citation = "Bloggs, J., Bloggy, Y. (2019),
#'          The power of blogging, Australian Journal of Bloggs, 43: 149-155.",
#'     date = as.Date("2019-01-01")
#' )
#' generate_markdown_for_publications(example_publication)
#'
#' @export
generate_markdown_for_publications <- function(publication) {
    if (!"publication" %in% class(publication)) {
        stop("Input publication must have class publication")
    }

    if (is.na(publication$link)) {
        cat(
            glue::glue("* {publication$citation}"),
            sep = "\n"
        )
    } else {
        cat(
            glue::glue("* [{publication$citation}]({publication$link})"),
            sep = "\n"
        )
    }

    return(invisible(NULL))
}
