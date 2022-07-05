sort_list_by_date <- function(list_to_sort) {
    sorting_column <- lapply(list_to_sort, function(a) {
        a$date
    })
    sorting_column <- do.call(c, sorting_column)

    orders <- order(sorting_column)

    sorted_list <- list_to_sort[orders]

    return (sorted_list)
}