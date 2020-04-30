#'////////////////////////////////////////////////////////////////////////////
#' FILE: ui.R
#' AUTHOR:
#' CREATED:
#' MODIFIED:
#' PURPOSE:
#' STATUS:
#' PACKAGES:
#' COMMENTS:
#'////////////////////////////////////////////////////////////////////////////
ui <- tagList(
    # <head>
    tags$head(

        ### UPDATE THE META TAGS WITH YOUR OWN INFO ###

        # define document meta elements
        tags$meta(charset = "utf-8"),
        tags$meta(`http-quiv` = "x-ua-compatible", content = "ie=edge"),
        tags$meta(
            name = "viewport",
            content = "width=device-width, initial-scale=1"
        ),
        tags$meta(
            name = "description",
            content = "[some description about the shiny app]"
        ),

        # define open graph data
        # tags$meta(property = "og:image", content = "[path/to/some/image]"),
        # tags$meta(property = "og:title", content  = "[some title]"),
        # tags$meta(property = "og:description", content = "[some description here]"),
        # tags$meta(property = "og:url", content = "[url to your app]"),
        # tags$meta(propery = "twitter:card", content = "summary"),

        # link stylesheet
        tags$link(rel = "stylesheet", href = "css/styles.min.css"),

        # add document title
        tags$title("[some title]")

    ),

    #'//////////////////////////////////////

    ### BUILD YOUR UI HERE
    tags$main(
        class = "main",
        tags$h1(class = "sample-title", "Hello, world!"),
        tags$p(
            "This is a sample shiny application using",
            tags$a(
                href = "https://parceljs.org",
                "parceljs"
            ),
            "to bundle css and javascript files."
        )
    ),

    #'//////////////////////////////////////
    # scripts
    tags$script(src = "js/index.min.js")
)