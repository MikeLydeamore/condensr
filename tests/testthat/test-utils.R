test_that("list sorter works", {
  unsorted_list <- list(
    element_one = list(date = as.Date("2022-01-01")),
    element_two = list(date = as.Date("2021-01-01"))
  )

  sorted_list <- sort_list_by_date(unsorted_list)

  expect_lt(sorted_list[[1]]$date, sorted_list[[2]]$date)
})

test_that("list sorter input test", {
  wrong_list <- list(
    a = list(day = 1),
    b = list(day=2)
  )
  expect_error(sort_list_by_date(wrong_list))
})