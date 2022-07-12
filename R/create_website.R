
#' Create the templates for a condensr website
#'
#' Creates the necessary directories, high level files and structures for a
#' condensr website.
#'
#' Under the hood, this function is creating a distill website (using
#' `distill:::do_create_website`), and then overwriting some files with
#' `condensr` specifics. These specific files are:
#'
#' * _site.yml
#' * index.Rmd
#' staff_list.Rmd
#' staff_member.Rmd
#'
#' @param dir Target directory for the website.
#' @param title Title of the website.
#'
#' @examples
#' create_website(dir = tempdir(), "test_site")
#' @export
create_website <- function(dir, title) {
    distill::create_website(dir, title, gh_pages = FALSE, edit = FALSE)

    render_template(
        "_site.yml",
        template_folder = "project",
        target_path = dir,
        data = list(
            name = basename(dir),
            title = title
        )
    )

    render_template(
        "index.Rmd",
        template_folder = "project",
        target_path = dir,
        data = list(
            title = title
        )
    )

    render_template(
        "staff_list.Rmd",
        template_folder = "project",
        target_path = dir,
        data = list(
            title = title
        )
    )

    render_template(
        "staff_member.Rmd",
        template_folder = "project",
        target_path = dir,
        output_name = "joe-bloggs.Rmd",
        data = list(
            title = title
        )
    )

    rmarkdown::render_site(dir)
}