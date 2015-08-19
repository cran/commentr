[![Build Status](https://travis-ci.org/cancercentrum/commentr.png?branch=master)](https://travis-ci.org/cancercentrum/commentr)

<!-- README.md is generated from README.Rmd. Please edit that file -->
commentr
========

R package to create script comments

Example
=======

``` r
library(commentr)

header_comment(
  "Just an example!", 
  "Just want to show a script header that can be copied to an R script", 
  author = "Erik Bülow", contact = "erik.bulow@rccvast.se"
)
#> The comment has been copied to clipboard and can be pasted into a script file!
#> 
#> 
#> ######################################################################
#> #                                                                    #
#> # Purpose:       Just an example!                                    #
#> #                                                                    #
#> # Author:        Erik Bülow                                          #
#> # Contact:       erik.bulow@rccvast.se                               #
#> # Client:        Erik Bülow                                          #
#> #                                                                    #
#> # Code created:  2015-08-19                                          #
#> # Last updated:  2015-08-19                                          #
#> # Source:        /Users/erikbulow/Documents/R-kod/commentr           #
#> #                                                                    #
#> # Comment:       Just want to show a script header that can be copi  #
#> #                ed to an R script                                   #
#> #                                                                    #
#> ######################################################################

block_comment("A small block comment")
#> The comment has been copied to clipboard and can be pasted into a script file!
#> 
#> 
#> ######################################################################
#> #                                                                    #
#> #                       A small block comment                        #
#> #                                                                    #
#> ######################################################################

line_comment("Comment on one line")
#> The comment has been copied to clipboard and can be pasted into a script file!
#> 
#> 
#> ######################## Comment on one line #########################

# Comment line without comment
line_comment("")
#> The comment has been copied to clipboard and can be pasted into a script file!
#> 
#> 
#> ######################################################################
```

Install it
==========

The package can be downloaded from CRAN

    install.packages("commentr")

The latest development version can also be downloaded from Github using the devtools package:

    devtools::install_github("cancercentrum/commentr")

Global options
==============

This package can use global options to streamline your commenting. See `?commentr` in R for details. If you have an `.Rprofile` file (Google it if you do not know) you are recommended to add the following lines to it:

    options(
      name = "Your name", 
      contact = "Your contact details", 
      comment_width =  80
    )

where 80 (change to preferd integer) is used as default for argument `width` in function `comment_width`.
