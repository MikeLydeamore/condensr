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
            glue::glue("<div class='col' onclick=\"location.href='staff/{member$id}/index.html';\" style='cursor: pointer;'>"),
            "<div class='col'>"
        ),
        "",
        glue::glue("<div class='personimg'> ![](images/staff/{{member$id}}.{{extension}}){fig-alt='{{member$name}}'} </div>", .open = "{{", .close = "}}"),
        "",
        glue::glue("### {member$name}"),
        "",
        ifelse(
            !is.na(member$description),
            glue::glue("{member$description}"),
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
