publication <- function(title,
                        related_staff,
                        link,
                        citation,
                        date) {
    pub <- list(
        title = title,
        related_staff = related_staff,
        link = link,
        citation = citation,
        date = date
    )

    class(pub) <- append(class(pub), "publication")

    return(pub)
}