#' Generate Academic Project
#'
#' Generates an academic project to be listed on staff profiles
#'
#' @param id A character string that uniquely identifies this project.
#' @param name Human readable name for the project.
#' @param related_staff Vector of `id`s for staff members. Projects will be
#' listed on the staff pages for this vector
#' @param link URL for the project. Default `NA` if there is no page to link to.
#'
#' @return An object of class `project` containing the input information.
#' @examples
#' example_project <- project(
#'        id = "joes-model",
#'        name = "Joe's Blogging Model",
#'        related_staff = "joe-bloggs"
#'    )
#' 
#' @export
project <- function(id,
                    name,
                    related_staff,
                    link = NA) {
    
    # Input id must be a string
    assertthat::assert_that(assertthat::is.string(id))
    assertthat::assert_that(assertthat::is.string(name))
    assertthat::assert_that(is.vector(related_staff))
    assertthat::assert_that(assertthat::is.string(link) | is.na(link))
    
    proj <- list(
        id = id,
        name = name,
        related_staff = related_staff,
        link = link
    )

    class(proj) <- append(class(proj), "project")

    return(proj)
}