#' create project
#'
#'
#' @param name name of the project
#' @param type create an app or a shiny-package
#'
#' @export
create_project <- function(name = NULL, type = NULL) {

    status <- TRUE
    if (is.null(name) || !is.character(name)) {
        cli::cli_alert_danger("Error: {.arg name} must be a string")
        status <- FALSE
    }

    if (is.null(type) || !is.character(type)) {
        cli::cli_alert_danger("Error: {.arg type} must be a string")
        status <- FALSE
    }

    .project__types <- c("app", "pkg")
    if (status && (!type %in% .project__types)) {
        cli::cli_alert_danger(
            "Error: {.val {type}} is invalid. Use {.val {.projectTypes}}"
        )
        status <- FALSE
    }

    pwd <- getwd()

    if (status && type == "app") {
        # cli::cli_alert_success("created package {.val {name}}")

    }
    
    if (status && type == "pkg") {

    }

}

create_project(name = "test", type = "app")