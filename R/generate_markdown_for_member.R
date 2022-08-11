#' Generate markdown for staff member
#'
#' Generates the image, short description and linking-out buttons for use in
#' a list of staff belonging to a group.
#'
#' @param member An object of class `staff_member`.
#'
#' @export
generate_markdown_for_member <- function(member) {
    if (!"staff_member" %in% class(member)) {
        stop("Input must have class member.")
    }

    cat(
        "<div class='col'>",
        ifelse(
            member$internal_link,
            "<a href='staff_{member$id}.html'>",
            ""
        ),
        glue::glue("### {member$name}"),
        "",
        glue::glue("![](images/staff/{member$id}.png)"),
        "",
        glue::glue("{member$description}"),
        ifelse(
            member$internal_link,
            "</a>",
            ""
        ),
        sep = "\n"
    )

    cat(
        "",
        "</div>",
        "",
        sep = "\n"
    )
}