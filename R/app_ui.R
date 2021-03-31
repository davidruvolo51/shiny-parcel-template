#' ////////////////////////////////////////////////////////////////////////////
#' FILE: ui.R
#' AUTHOR:
#' CREATED:
#' MODIFIED:
#' PURPOSE:
#' STATUS:
#' PACKAGES:
#' COMMENTS:
#' ////////////////////////////////////////////////////////////////////////////

app_ui <- function() {
    tagList(
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
            # tags$meta(
            #     property = "og:image",
            #     content = "[path/to/some/image]"
            # ),
            tags$meta(property = "og:title", content = "Shiny App Template"),
            tags$meta(
                property = "og:description",
                content = "A Shiny App Template for parcel, sass, and babel"
            ),
            # tags$meta(property = "og:url", content = "[url to your app]"),
            # tags$meta(propery = "twitter:card", content = "summary"),

            # link stylesheet
            tags$link(rel = "stylesheet", href = "www/index.css"),

            # add document title
            tags$title("Shiny App Template")
        ),

        ### BUILD YOUR UI HERE: fluidPage, tabPanel, etc.
        tags$main(
            class = "main",
            tags$img(
                id = "rlogo",
                src = "www/imgs/Rlogo.png",
                alt = "The Comprehensive R Archive Network"
            ),
            tags$h1("Shiny + Parcel"),
            tags$p(
                "This demo shiny app provides an example for integrating ",
                "Shiny with the application bundler",
                tags$a(
                    href = "https://parceljs.org",
                    "Parcel"
                ),
                ". This is useful for optimizing CSS and JavaScript assets,",
                "as well as utilizing frontend tooling. "
            )
        ),

        ### LOAD JS HERE ###
        tags$script(src = "www/index.js")
    )
}