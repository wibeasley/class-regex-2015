
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
# Match non-printable character

# I don't understand how the subject is supposed to look here

subject <-
"aaac
bbb"
subject

pattern <- "(.?)\n\r?(.+)"
pattern <- "(\\w+)\\n(\\w+)" # any number of word character, line break, any nymber of word character
gsub(pattern, "\\2zzz\\1yyy\\2", subject) # sub - for substitution

# @knitr 2_3 -----
# Match one of many characters

## A.
subject <- c("calendar",
             "celandar",
             "calander",

             "celender",
             "calandar",

             "celendar",
             "celandar",
             "calender")

grep(pattern="c[ae]l[ae]nd[ae]r", x=subject, perl=F, value=F)
grep(pattern="c[ae]l[ae]nd[ae]r", x=subject, perl=F, value=T)

## B.
# I don't understand how the subject is supposed to look here

## C.
# I don't understand how the subject is supposed to look here


