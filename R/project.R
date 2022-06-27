project <- function(id,
                    name,
                    related_staff) {
    proj <- list(
        id = id,
        name = name,
        related_staff = related_staff
    )

    class(proj) <- append(class(proj), "project")

    return(proj)
}