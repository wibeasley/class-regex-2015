#
# subject <-
#  "2016-2018 Muthen & Muthen
#  1998-2014 Muthen & Muthen
#  Muthen & Muthen 1998-2020"

subject <- c(
 "2016-2018 Muthen & Muthen",
 "1998-2014 Muthen & Muthen",
 "Muthen & Muthen 1998-2020"
 )
# s <- strsplit(subject, pattern)

regex <- "^\\d.+?(\\w)$"
(x <- grep(pattern=regex, subject, value=T, perl=T))
(x <- grep(pattern=regex, subject, value=F, perl=T))


