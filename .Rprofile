source("renv/activate.R")
Sys.setenv(TERM_PROGRAM = "vscode")

if (file.exists(
        file.path(
            Sys.getenv(
                if (.Platform$OS.type == "windows") "USERPROFILE" else "HOME"
            ),
            ".vscode-R", "init.R"
        )
    )) {
    source(
        file.path(
            Sys.getenv(
                if (.Platform$OS.type == "windows") "USERPROFILE" else "HOME"
            ),
        ".vscode-R", "init.R"
    )
}


