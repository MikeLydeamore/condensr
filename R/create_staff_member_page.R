
#' Create a markdown template for a specific staff member
#'
#' Creates a template markdown file for a given input staff member.
#'
#' @param staff_member An object of class `staff_member` that will be used to
#' generate the template.
#' @param site_dir Directory of the website.
#' @param staff_subdir Subdirectory that stores the staff pages. Default `"staff"`.
#'
#' @export
create_staff_member_page <- function(staff_member, site_dir) {
    if (!"staff_member" %in% class(staff_member)) {
        stop("Input staff_member must be of class staff_member")
    }

    assertthat::assert_that(assertthat::is.string(site_dir))
    assertthat::assert_that(assertthat::is.string(staff_subdir))

    render_template(
        "staff_member.Rmd",
        template_folder = "project",
        target_path = site_dir,
        output_name = paste0("staff_", staff_member$id, ".Rmd"),
        data = list(
            name = basename(site_dir),
            title = staff_member$id
        )
    )

    return(invisible(NULL))
}