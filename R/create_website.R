#' Create the templates for a condensr website
#'
#' Creates the necessary directories, high level files and structures for a
#' condensr website.
#'
#' Under the hood, this function is creating a distill website (using
#' `distill:::do_create_website`), and then overwriting some files with
#' `condensr` specifics. These specific files are:
#'
#' * _site.yml - for site specific configurations
#' * index.qmd - the home page of the website
#' * staff_list.R - an example setup the `condensr` staff, project and publication lists
#' * staff/index.qmd - the template page that will list staff members
#' * staff/joe-bloggs/index.qmd - an example page for the hypothetical staff member
#'
#' @param dir Target directory for the website.
#' @param title Title of the website.
#' @return No return value, called to create the skeleton structure of the website.
#'
#' @examples
#' create_website(dir = tempdir(), "test_site")
#' @export
create_website <- function(dir, title) {
    dir.create(file.path(dir))

    # Create subdirectory for staff pages to be stored
    dir.create(file.path(dir, "staff"))

    render_template(
        "_quarto.yml",
        template_folder = "project",
        target_path = dir
    )

    render_template(
        "staff_list.R",
        template_folder = "project",
        target_path = dir
    )

    render_template(
        "index.qmd",
        template_folder = "project",
        target_path = dir
    )

    render_template(
        "people.qmd",
        template_folder = "project",
        target_path = file.path(dir, "people"),
        output_name = "index.qmd"
    )

    create_staff_member_page(
        staff_member = staff_member(
            id = "joe-bloggs",
            name = "Joe Bloggs",
            description = "Joe is a Dr of Blogging.",
            external_link = "https://www.example.com/"
        ),
        site_dir = dir
    )

    return (invisible(NULL))
}
