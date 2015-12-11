
subject <-
"abc
def  ff"


# subject <-
#   "qqqq aaa
# bbb qqq"

subject

#pattern <- "(.+?)\n\r{0,1}(.+)"
# pattern <- "(\\w+)\n\r?(\\w+)"
pattern <- "(\\w)\n(\\w+)"
gsub(pattern, "xxx\\2yyy\\1zzz", subject)
