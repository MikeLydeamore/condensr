do_create_website <- function(dir, title) {
    distill:::do_create_website(dir, title, gh_pages = FALSE, edit = FALSE, "website")

    render_template(
        "_site.yml",
        template_folder = "project",
        target_path = dir,
        data = list(
            name = basename(dir),
            title = title,
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
}