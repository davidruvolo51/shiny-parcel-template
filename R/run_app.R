
#' @title run application
#'
#' @param path project directory
#' @param port port to run shiny app (default: 8000)
#'
#' @export
run_app <- function(path, port = 8000) {
    shiny::addResourcePath(
        prefix = "www",
        directoryPath = paste0(path, "/inst/www")
    )

    shiny::shinyApp(
        ui = app_ui,
        server = app_server,
        options = list(
            port = port,
            launch.browser = FALSE
        )
    )
}