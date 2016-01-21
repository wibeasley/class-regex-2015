
# See instructions for the assignment at https://github.com/wibeasley/regex-class-2015/issues/2

# This assignment will use the subject typical for model output files from Mplus
# Extractions like these are central to IalsaSynthesis package

subject <-
"Estimator                                                      MLF
Information matrix                                        OBSERVED
Maximum number of iterations                                   100
Convergence criterion                                    0.100D-05
Maximum number of EM iterations                               1000
Convergence criteria for the EM algorithm
Loglikelihood change                                   0.100D-02
Relative loglikelihood change                          0.100D-05
Derivative                                             0.100D-03
Minimum variance                                         0.100D-03
Maximum number of steepest descent iterations                   20
Maximum number of iterations for H1                           2000
Convergence criterion for H1                             0.100D-04
Optimization algorithm                                         EMA"


# 1) Build from simplest to final form
# 2) Contrast "sinlge line" vs "multi line" environments.

# Step in solving
# 1. Paste the subject chunk into  https://regex101.com/ with  sg modifiers
# 2. Develop regex
regex_estimator <- "Estimator"
regex_estimator <- "Estimator\s+(\w+)" # Estimator, then spaces, then group
# matched the blue , captured the green
regex_estimator <- "Estimator\s+(\w+).*"  # end on the first non-word character (e.g. end of line)
regex_estimator <- ".*Estimator\s+(\w+).*" # precedes by any character until it runs into "Estimator"
# regex_estimator <- "(?s).*?Estimator\\s+(\\w+).*" #
estimator <- gsub(regex_estimator, "\\1", subject,  perl=T)

print(estimator)

# (?s)  is toggling an option. It's not a capturing group. As it says on page 40 of our book:
#(?s)> is the mode modifier for "dot matches line breaks" mode in .NET, Java, XRegExp,
#PCRE, Perl, and Python

# Code 3.1

regex_IterationsH1 <- "(?s).*Maximum number of iterations for H1(?s).*?(\\d+).*"
IterationsH1<- gsub(regex_IterationsH1, "\\1", subject, perl=T)

print(IterationsH1)

# Code 3.2

regex_iterations <- "(?s).*Maximum number of EM iterations(?s).*?(\\d+).*"
iterations<- gsub(regex_iterations, "\\1", subject, perl=T)

print(iterations)

# Code 3.3

regex_derivative<- "(?s).*Derivative(?s).*?(\\d.\\d*\\w.\\d+).*"
derivative<- gsub(regex_derivative, "\\1", subject, perl=T) # "\\1" returns the first capturing group of the regular expression

print(derivative)





