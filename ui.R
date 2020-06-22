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
            content = "A Shiny App Template for parcel, sass, and babel"
        ),

        # define open graph data -- keep order
        # tags$meta(property = "og:image", content = "[path/to/some/image]"),
        tags$meta(property = "og:title", content  = "Shiny App Template"),
        tags$meta(
            property = "og:description",
            content = "A Shiny App Template for parcel, sass, and babel"
        ),
        # tags$meta(property = "og:url", content = "[url to your app]"),
        # tags$meta(propery = "twitter:card", content = "summary"),

        # link stylesheet
        tags$link(rel = "stylesheet", href = "index.min.css"),

        # add document title
        tags$title("Shiny App Template")

    ),

    #'//////////////////////////////////////

    ### BUILD YOUR UI HERE: fluidPage, tabPanel, etc.
    tags$main(
        class = "main",
        htmlOutput("doc")
    ),

    tags$footer(
        class = "footer",
        tags$ul(
            class = "list",
            tags$li(
                class = "list-item",
                tags$a(
                    class = "list-item-link",
                    href = "https://github.com/davidruvolo51/shiny-app-template",
                    "GitHub"
                )
            ),
            tags$li(
                class = "list-item",
                tags$a(
                    class = "list-item-link",
                    href = "https://shiny.rstudio.com",
                    "Shiny"
                )
            )
        )
    ),

    #'//////////////////////////////////////
    # scripts
    tags$script(src = "index.min.js")
)