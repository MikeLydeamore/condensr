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
        ifelse(
            member$internal_link,
            glue::glue("<div class='col' onclick=\"location.href='staff_{member$id}.html';\" style='cursor: pointer;'>"),
            "<div class='col'>"
        ),
        glue::glue("### {member$name}"),
        "",
        glue::glue("![](images/staff/{member$id}.png)"),
        "",
        glue::glue("{member$description}"),
        sep = "\n"
    )

    cat(
        "",
        "</div>",
        "",
        sep = "\n"
    )
}