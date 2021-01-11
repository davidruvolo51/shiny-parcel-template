tags$head(
    tags$meta(charset = "utf-8"),
    tags$meta(
        `http-quiv` = "x-ua-compatible",
        content = "ie=edge"
    ),
    tags$meta(
        name = "viewport",
        content = "width=device-width, initial-scale=1"
    ),
    # define open graph data [optional]
    # tags$meta(
    #     name = "description",
    #     content = "[some description about the shiny app]"
    # ),
    # tags$meta(property = "og:image", content = "[path/to/some/image]"),
    # tags$meta(property = "og:title", content  = "[some title]"),
    # tags$meta(
    #     property = "og:description",
    #     content = "[some description about the shiny app]"
    # ),
    # tags$meta(property = "og:url", content = "[url to your app]"),
    # tags$meta(propery = "twitter:card", content = "summary"),

    # link external files here
    tags$link(
        rel = "stylesheet",
        href = "${path}"
    ),
    # add document title
    tags$title("${title}")
)