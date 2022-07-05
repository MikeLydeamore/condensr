project <- function(id,
                    name,
                    related_staff,
                    link = NA) {
    proj <- list(
        id = id,
        name = name,
        related_staff = related_staff,
        link = link
    )

    class(proj) <- append(class(proj), "project")

    return(proj)
}