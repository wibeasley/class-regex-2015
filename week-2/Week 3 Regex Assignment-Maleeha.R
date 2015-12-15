# Code:(Regex Assignment)
  
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

#regex_estimator <- "(?s).*?Estimator\\s+(\\w+).*"
#estimator <- gsub(regex_estimator, "\\1", subject, perl=T)

#print(estimator)

# (?s)  is toggling an option. It's not a capturing group. As it says on page 40 of our book:
#(?s)> is the mode modifier for "dot matches line breaks" mode in .NET, Java, XRegExp,
#PCRE, Perl, and Python

# Code 3.1

regex_IterationsH1 <- "(?s).*Maximum number of iterations for H1(?s).*?(\\d+).*"
IterationsH1<- gsub(regex_IterationsH1, "\\1", subject, perl=T)

print(IterationsH1)