#' Generate markdown for staff member
#'
#' Generates the image, short description and linking-out buttons for use in
#' a list of staff belonging to a group.
#'
#' @param member An object of class `staff_member`.
#' @param extension Extension of the image file. Don't include the .
#' @return No return value, function will output text directly into markdown
#' document using `cat`.
#' 
#' @examples
#' example_staff_member <- staff_member(
#'     id = "example-id",
#'     name = "Example Name",
#'     description = "Example description for example staff member.",
#'     external_link = "http://www.example.com/",
#'     internal_link = FALSE
#' )
#' generate_markdown_for_member(example_staff_member)
#'
#' @export
generate_markdown_for_member <- function(member, extension = "png") {
    if (!"staff_member" %in% class(member)) {
        stop("Input must have class member.")
    }

    cat(
        ifelse(
            member$internal_link,
            glue::glue("<div class='col' onclick=\"location.href='{member$id}/';\" style='cursor: pointer;'>"),
            glue::glue("<div class='col' onclick=\"location.href='{member$external_link}';\" style='cursor: pointer;'>")
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

    return(invisible(NULL))
}
