
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

# define pattern to match in the string
matchthis <- "The punctuation characters in the ASCII table are: !"#$%&'()*+,-./:;<=>?@[\]^_`{|}~."
(x <- grep(pattern=matchthis, subject, value=T, perl=T))


# @knitr 2_2 -----
# Match non-printable character
# Most common non-printable characters (for me)
# newline  : \n or \r or \n\r
# tab: \t

subject <-
"aaac
bbb"

subject # notice how R puts a wack where newline should be
cat(subject) # check how it actually gets printed

pattern <- "\n\r?" # match the newline
gsub(pattern, "XX", subject) # replaces newline with XX

# match newline and any ONE character to the LEFT of it
pattern <- "(.)\n\r?"
gsub(pattern, "XX", subject)

# match newline and any TWO characters to the LEFT of it
pattern <- "(.{2})\n\r?"
# {} how many of the preceding character?
gsub(pattern, "XX", subject)

# match newline and any from TWO to FOUR characters to the LEFT of it
pattern <- "(.{2,4})\n\r?"
gsub(pattern, "XX", subject)

# match newline and any number characters to the LEFT of it
pattern <- "(.+)\n\r?"
gsub(pattern, "XX", subject)


# matches one character immediately preceding the newline
pattern <- "(.?)\n\r?"
# () defines the 1st capturing group
# . matches any character except newline
# ?  quantifies: between zero and one time, as many times as possible, giving back as needed [greedy]
gsub(pattern, "XX", subject)

# alternative to above
# finds the single character immediately preceding the newline
# \w match any word character [a-zA-Z0-9_]
pattern <- "(\\w)\n\r?" # note the first wack is for R
gsub(pattern, "XX", subject)


pattern <- "(.?)\n\r?(.+)" # newline is optional
pattern <- "(\\w+)\\n(\\w+)" # alternative, but newline is not optional
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


