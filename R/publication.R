#' Generate publication
#'
#' Generates a publication object that is linked from staff websites
#'
#' @param title Title of the publication.
#' @param related_staff Vector of the `id`s of the related staff.
#' @param link URL of the publication that will be linked.
#' @param citation Text that will be displayed for this publication.
#' @param date Date of publication. List of publications is sorted on the staff pages.
#'
#' @return An object of class `publication` with 5 elements:
#' * `title`
#' * `related_staff`
#' * `link`
#' * `citation`
#' * `date`
#'
#' @examples
#' example_publication <- publication(
#'     title = "Joe's Blogging Paper",
#'     related_staff = c("joe-bloggs"),
#'     link = NA,
#'     citation = "Bloggs, J., Bloggy, Y. (2019),
#'          The power of blogging, Australian Journal of Bloggs, 43: 149-155.",
#'     date = as.Date("2019-01-01")
#' )
#' @export
publication <- function(title,
                        related_staff,
                        link,
                        citation,
                        date) {
    assertthat::assert_that(assertthat::is.string(title))
    assertthat::assert_that(is.vector(related_staff))
    assertthat::assert_that(assertthat::is.string(link) | is.na(link))
    assertthat::assert_that(assertthat::is.string(citation))
    assertthat::assert_that(assertthat::is.date(date))

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