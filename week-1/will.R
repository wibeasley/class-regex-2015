# subject <-
#  "2016-2018 Muthen & Muthen
#  1998-2014 Muthen & Muthen
#  Muthen & Muthen 1998-2020"

subject <- c(
 "2016-2018 Muthen & Muthen",
 "1998-2014 Muthen & Muthen",
 "Muthen & Muthen 1998-2020"
 )

(x <- grep(pattern="[20]", subject, value=T, perl=T))

grep("[7]", subject,  perl=T)
grep("[20]", subject, value=T, perl=T)
