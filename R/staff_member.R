staff_member <- function(id,
                         name,
                         description,
                         external_link,
                         internal_link = FALSE) {
    member <- list(
        id = id,
        name = name,
        description = description,
        external_link = external_link
    )

    class(member) <- append(class(member), "staff_member")

    return(member)
}