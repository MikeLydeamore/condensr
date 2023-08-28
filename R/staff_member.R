#' Create staff member
#'
#' Creates a staff member for use in an academic group website. On the list of
#' all staff members (by default in `staff_list.Rmd`), the `name` and
#' `description` will be reported. In addition, an image, stored in
#' `images/staff` with filename `id.png` will be shown.
#'
#' The external link will be the link in the "MORE" button on the rendered website.
#'
#' @param id String defining the unique identifier for a staff member.
#' @param name Display name of staff member.
#' @param description Short description, used on staff pages.
#' @param external_link Link to an external website.
#' @param internal_link Should an internal link be used? TRUE/FALSE
#' @param email email address for the staff member. Used to pre-fill the templates.
#'
#' @return An object of class `staff_member` with the following elements:
#' * `id`
#' * `name`
#' * `description`
#' * `external_link`
#' * `internal_link`
#' * `email`
#' @examples
#' example_staff_member <- staff_member(
#'      id = "example-id",
#'      name = "Example Name",
#'      description = "Example description for example staff member.",
#'      external_link = "http://www.example.com/",
#'      internal_link = FALSE
#'  )
#' @export
staff_member <- function(id,
                         name,
                         description,
                         external_link,
                         internal_link = FALSE,
                         email = NA) {
    assertthat::assert_that(assertthat::is.string(id))
    assertthat::assert_that(assertthat::is.string(name))
    assertthat::assert_that(assertthat::is.string(description))
    assertthat::assert_that(assertthat::is.string(external_link) | is.na(external_link))
    assertthat::assert_that(is.logical(internal_link))
    assertthat::assert_that(assertthat::is.string(email) | is.na(email))


    member <- list(
        id = id,
        name = name,
        description = description,
        external_link = external_link,
        internal_link = internal_link,
        email = email
    )

    class(member) <- append(class(member), "staff_member")

    return(member)
}
