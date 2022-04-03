#'////////////////////////////////////////////////////////////////////////////
#' FILE: dev.R
#' AUTHOR: David Ruvolo
#' CREATED: 2021-03-31
#' MODIFIED: 2022-04-03
#' PURPOSE: workspace management
#' STATUS: stable
#' PACKAGES: usethis, renv, pkgbump
#' COMMENTS: NA
#'////////////////////////////////////////////////////////////////////////////

# init project
# usethis::create_project(".")
# usethis::use_description(check_name = FALSE)
# usethis::use_namespace()

usethis::use_package("shiny")

# version management
# remotes::install_github("davidruvolo51/pkgbump")
pkgbump::set_pkgbump(c("DESCRIPTION", "package.json"))
pkgbump::pkgbump(version = "1.1.0")
