#' Create Webpack
#'
#' Init webpack config directory and required configuration files
#'
#' @param name name of the projects (passed down from parent function)
#'
#' @noRd
.make__webpack <- function(name) {

    # init dir
    dir.create("config")

    # load, parse, and copy into target location
    files <- list.files(
        path = system.file("templates/webpack", package = "shinywebpackage"),
        all.files = TRUE,
        recursive = TRUE
    )

    files_copy_as_is <- c(".babelrc", "postcss.config.js", "webpack.config.js")
    sapply(seq_len(length(files)), function(n) {
        if (files[n] %in% files_copy_as_is) {
            file.copy(
                from = files[n],
                to = basename(files[n])
            )
        } else {
            file.copy(
                from = files[n],
                to = paste0("config/webpack.", basename(files[n]))
            )
        }
    })

    files_customize <- list.files("config/")
    

}