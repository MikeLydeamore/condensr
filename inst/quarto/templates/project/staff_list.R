library(condensr)

staff_list <- list(
    "joe-bloggs" = staff_member(
        id = "joe-bloggs",
        name = "Joe Bloggs",
        description = "Joe is a Dr of Blogging.",
        external_link = "https://www.example.com/"
    )
)

publication_list <- list(
    publication(
        title = "Joe's Blogging Paper",
        related_staff = c("joe-bloggs"),
        link = NA,
        citation = "Bloggs, J., Bloggy, Y. (2019), The power of blogging, Australian Journal of Bloggs, 43: 149-155.",
        date = as.Date("2019-01-01")
    )
)

# Sort the publications by their date
publication_list <- sort_list_by_date(publication_list)

project_list <- list(
    project(
        id = "joes-model",
        name = "Joe's Blogging Model",
        related_staff = "joe-bloggs"
    )
)
