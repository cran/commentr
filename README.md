commentr
========

R package to create script comments



# Example 

```
> header_comment(
>   "Just an example!", 
>   "Just want to show a script header that can be copied to an R script", 
>   author = "Erik Bülow", contact = "erik.bulow@rccvast.se"
> )

##########################################################################################
#                                                                                        #
# Purpose:       Just an example!                                                        #
#                                                                                        #
# Author:        Erik Bülow                                                              #
# Contact:       erik.bulow@rccvast.se                                                   #
# Client:        Erik Bülow                                                              #
#                                                                                        #
# Code created:  2014-10-13                                                              #
# Last updated:  2014-10-13                                                              #
# Source:        /Users/erikbulow/Documents/R-kod/commentr                               #
#                                                                                        #
# Comment:       Just want to show a script header that can be copied to an R script     #
#                                                                                        #
##########################################################################################


> block_comment("A small block comment")

##########################################################################################
#                                                                                        #
#                                 A small block comment                                  #
#                                                                                        #
##########################################################################################


> line_comment("Comment on one line")

################################## Comment on one line ###################################


> comment_line()

##########################################################################################
```



# Install it

```
# If you have not already installed R package, devtools:
install.packages("devtools")
# Then, to download this package:
devtools::install_github("cancercentrum/commentr")
```


# Global options

This package can use global options to streamline your commenting. See `?commentr` in R for details. 
If you have an `.Rprofile` (Google it if you do not know) you are recommended to add the following lines to it:
```
options(
  name = "Your name", 
  contact = "Your contact details", 
  comment_width =  80
)
```
where 80 (change to preferd integer) is used as default for argument `width` in function `comment_width`