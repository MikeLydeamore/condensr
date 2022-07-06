test_that("project structure inputs", {
  expect_error({
    project(
      id = 5,
      name = "Example Project",
      related_staff = c("joe-bloggs")
    )
  })

  expect_error({
    project(
      id = "example-project",
      name = 5,
      related_staff = c("joe-bloggs")
    )
  })

  expect_silent({
    project(
      id = "example-project",
      name = "example-name",
      related_staff = c("joe-bloggs")
    )
  })
})

test_that("publication structure inputs", {
  expect_error({
    publication(
      title = 5,
      related_staff = c("joe-bloggs"),
      citation = "citation text",
      date = as.Date("2022-01-01"),
      link = "http://www.example.com/"
    )
  })

  expect_error({
    publication(
      title = "example-title",
      related_staff = c("joe-bloggs"),
      citation = "citation text",
      date = "2022-01-01",
      link = "http://www.example.com/"
    )
  })

  expect_silent({
    publication(
      title = "example-title",
      related_staff = c("joe-bloggs"),
      citation = "citation text",
      date = as.Date("2022-01-01"),
      link = "http://www.example.com/"
    )
  })
})