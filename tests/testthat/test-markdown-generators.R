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