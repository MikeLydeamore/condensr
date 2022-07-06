generate_markdown_for_member <- function(member) {

    if (!"staff_member" %in% class(member)) {
        error("Input must have class member.")
    }

    cat(
        "::: col",
        glue::glue("### {member$name}"),
        "",
        glue::glue("![](images/staff/{member$id}.png)"),
        "",
        glue::glue("{member$description}"),
        sep = "\n"
    )
    if (!is.na(member$external_link)) {
        cat(
            glue::glue(
                "<a href='{member$id}.html' target = '_blank'>",
                "<div class='more--button'> More </div>",
                "</a>"
            ),
            sep = "\n"
        )
    }

    cat(
        "",
        ":::",
        "",
        sep = "\n"
    )
}