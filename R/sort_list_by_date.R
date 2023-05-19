#' Sort a list by the list element `date`.
#'
#' Sorts a list for the column `date`.
#'
#' @param list_to_sort List to sort. Each element of the list must have column `date`.
#'
#' @return The sorted list.
#' @export
sort_list_by_date <- function(list_to_sort) {
    sorting_column <- lapply(list_to_sort, function(a) {
        if (!"date" %in% names(a)) {
            stop("List element does not have an object date")
        }
        return(a$date)
    })
    sorting_column <- do.call(c, sorting_column)

    orders <- order(sorting_column)

    sorted_list <- list_to_sort[orders]

    return(sorted_list)
}
