
# @knitr 2_1 -----
# in https://regex101.com/
# I enter the following character string
# The punctuation characters in the ASCII table are: !"#$%&'()*+,-./:;<=>?@[\]^_`{|}~.
# into the window labeled TEST STRING
# I begin to type into the window labeled REGULAR EXPRESSION
# having set the option after "/" to "gm"
# As I match characters from the string below
# blue highlight shows what has been matched

# @knitr create_subject -----
# capture " by using ' as quotes
cat(s1 <- 'The punctuation characters in the ASCII table are: !"#$%&')
# caputre ' by using " as quotes
cat(s2 <- "'()*+,-./:;<=>?@[")
s3 <- "\]^_`{|}~." # produces error
cat(s3 <- "\\]^_`{|}~.") # the first wack is escaped, works
print(s3) # however it stores the first wack
(subject <- paste0(s1,s2,s3)) # proper subject

# subjects <- strsplit(subject, split=" ")
regex <- "The punctuation characters in the ASCII table are: !"#$%&'()*+,-./:;<=>?@[\]^_`{|}~."
(x <- grep(pattern=regex, subject, value=T, perl=T))


# @knitr 2_2 -----
