#' Create a quarto file for a specific staff member
#'
#' Creates a quarto file for a given input staff member.
#'
#' @param staff_member An object of class `staff_member` that will be used to
#' generate the template.
#' @param site_dir Directory of the website.
#' @param staff_folder Subfolder in which the staff qmd files are stored.
#' Default "staff". Note that each template will be `index.qmd` to facilitate
#' pretty link formatting in-browser.
#' @return No return value, called to create a qmd file for the staff member.
#' 
#' @examples
#' example_staff_member <- staff_member(
#'     id = "example-id",
#'     name = "Example Name",
#'     description = "Example description for example staff member.",
#'     external_link = "http://www.example.com/",
#'     internal_link = FALSE
#' )
#' create_staff_member_page(example_staff_member, tempdir())
#'
#' @export
create_staff_member_page <- function(staff_member, site_dir, staff_folder = "staff") {
    if (!"staff_member" %in% class(staff_member)) {
        stop("Input staff_member must be of class staff_member")
    }

    assertthat::assert_that(assertthat::is.string(site_dir))

    data <- list(
        INPUT_STAFF_ID = staff_member[["id"]],
        INPUT_STAFF_NAME = staff_member[["name"]],
        INPUT_EMAIL = staff_member[["email"]]
    )
    if (!is.null(staff_member[["external_link"]])) {
        data[["INPUT_EXTERNAL_LINK"]] <- staff_member[["external_link"]]
    }

    render_template(
        "staff_member.qmd",
        template_folder = "project",
        target_path = file.path(site_dir, staff_folder, staff_member$id),
        output_name = "index.qmd",
        data = data
    )

    return(invisible(NULL))
}
