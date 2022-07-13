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

test_that("staff member inputs", {
  expect_error({
    staff_member(
      id = 5,
      name = "Example Name",
      description = "Example description for example staff member.",
      external_link = "http://www.example.com/",
      internal_link = FALSE
    )
  })

  expect_error({
    staff_member(
      id = "example-id",
      name = 5,
      description = "Example description for example staff member.",
      external_link = "http://www.example.com/",
      internal_link = FALSE
    )
  })

  expect_error({
    staff_member(
      id = "example-id",
      name = "Example Name",
      description = 5,
      external_link = "http://www.example.com/",
      internal_link = FALSE
    )
  })

  expect_error({
    staff_member(
      id = "example-id",
      name = "Example Name",
      description = "Example description",
      external_link = "http://www.example.com/",
      internal_link = "http://www.example.com"
    )
  })

  expect_silent({
    staff_member(
      id = "example-id",
      name = "Example Name",
      description = "Example description for example staff member.",
      external_link = "http://www.example.com/",
      internal_link = FALSE
    )
  })
})