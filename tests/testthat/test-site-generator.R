test_that("test site generates", {
    test_site_path <- file.path(test_path(), "test_site")
    unlink(test_site_path, recursive = T) #Remove test_site folder
    
    create_website(dir = test_site_path, title = "test_site")
    
    expect_true(dir.exists(test_site_path))
})

test_that("render template generates a given path", {
    test_site_path <- file.path(test_path(), "test_site")
    unlink(test_site_path, recursive = T) # Remove test_site folder

    render_template(
        "_site.yml",
        template_folder = "project",
        target_path = test_site_path,
        data = list(
            name = basename(test_site_path),
            title = title,
        )
    )

    expect_true(dir.exists(test_site_path))
    expect_true(file.exists(file.path(test_site_path, "_site.yml")))
})