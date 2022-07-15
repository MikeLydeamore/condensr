test_that("member markdown generates", {
    example_staff_member <- staff_member(
        id = "example-id",
        name = "Example Name",
        description = "Example description for example staff member.",
        external_link = "http://www.example.com/",
        internal_link = FALSE
    )

    expect_error(generate_markdown_for_member(list("test-input")))

    expect_output(generate_markdown_for_member(example_staff_member))
})

test_that("project markdown generates", {
    example_project <- project(
        id = "example-project",
        name = "example-name",
        related_staff = c("joe-bloggs")
    )

    expect_error(generate_markdown_for_projects(list("test-input")))

    expect_output(generate_markdown_for_projects(example_project))

    # Project with link:
    example_project_with_link <- project(
        id = "example-project",
        name = "example-name",
        related_staff = c("joe-bloggs"),
        link = "http://www.example.com"
    )
    expect_output(generate_markdown_for_projects(example_project_with_link))
})

test_that("staff markdown generates", {
    example_staff_member <- staff_member(
        id = "example-id",
        name = "Example Name",
        description = "Example description for example staff member.",
        external_link = "http://www.example.com/",
        internal_link = FALSE
    )

    expect_error(generate_markdown_for_member(list("test-input")))

    expect_output(generate_markdown_for_member(example_staff_member))

    example_staff_member[["internal_link"]] <- TRUE
    expect_output(generate_markdown_for_member(example_staff_member))
})

test_that("publication markdown generates", {
    example_publication <- publication(
        title = "example-title",
        related_staff = c("joe-bloggs"),
        citation = "citation text",
        date = as.Date("2022-01-01"),
        link = NA
    )

    expect_error(generate_markdown_for_publications(list("test-input")))

    expect_output(generate_markdown_for_publications(example_publication))

    example_publication_with_link <- publication(
        title = "example-title",
        related_staff = c("joe-bloggs"),
        citation = "citation text",
        date = as.Date("2022-01-01"),
        link = "http://www.example.com/"
    )

    expect_output(generate_markdown_for_publications(example_publication_with_link))
})