#' Generate markdown for staff member
#'
#' Generates the image, short description and linking-out buttons for use in
#' a list of staff belonging to a group.
#'
#' @param member An object of class `staff_member`.
#' @param extension Extension of the image file. Don't include the .
#'
#' @export
generate_markdown_for_member <- function(member, extension = "png") {
    if (!"staff_member" %in% class(member)) {
        stop("Input must have class member.")
    }

    cat(
        ifelse(
            member$internal_link,
            glue::glue("<div class='col' onclick=\"location.href='staff_{member$id}.html';\" style='cursor: pointer;'>"),
            "<div class='col'>"
        ),
        "",
        glue::glue("![](images/staff/{member$id}.{extension})"),
        "",
        glue::glue("### {member$name}"),
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
