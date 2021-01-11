#'////////////////////////////////////////////////////////////////////////////
#' FILE: dev.R
#' AUTHOR: David Ruvolo
#' CREATED: 2020-09-28
#' MODIFIED: 2020-09-28
#' PURPOSE: pkg management
#' STATUS: in.progress
#' PACKAGES: usethis; devtools; pkgbump
#' COMMENTS: NA
#'////////////////////////////////////////////////////////////////////////////

# pkg
usethis::use_namespace()
usethis::use_description()
usethis::use_news_md(open = FALSE)


# add dependencies
usethis::use_package("cli")
usethis::use_package("jsonlite")


#'//////////////////////////////////////


#' ~ 1 ~
#' Testing

devtools::check_man()
devtools::load_all()

.make__webpack(name = "Test")




#'//////////////////////////////////////

#' ~ 99 ~
#' MISC


# ignore
.ignore <- c(
    "DS_STORE"
)
usethis::use_git_ignore(.ignore)
usethis::use_build_ignore(
    files = c(
        .ignore
    )
)


# pkgbump
pkgbump::set_pkgbump(
    files = c(
        "DESCRIPTION",
        "package.json"
    )
)
pkgbump::pkgbump(version = "0.0.1")