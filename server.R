#'////////////////////////////////////////////////////////////////////////////
#' FILE: server.R
#' AUTHOR:
#' CREATED:
#' MODIFIED:
#' PURPOSE:
#' STATUS:
#' PACKAGES:
#' COMMENTS:
#'////////////////////////////////////////////////////////////////////////////
server <- function(input, output) {

    output$doc <- renderUI({
        includeHTML(
            rmarkdown::render("README.md", quiet = TRUE)
        )
    })
}