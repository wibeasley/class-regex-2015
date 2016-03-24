
# ---- dissecting-variable-names ------------
ds <- data.frame(variable = c(
  "intage2000", "intage2005", "intage2009", # age
  "cook.70", "cook.75", "cook.79", # cook
  "bath.70", "bath.75", "bath.79", # bath
  "dressing.70", "dressing.75", "dressing.79", # dressing
  "toilet.70", "toilet.75", "toilet.79", # toilet
  "feed.70", "feed.75", "feed.79", # feed
  "chair.70", "chair.75", "chair.79", # chair
  "dem2000", "dem2005", "dem2009", # dem
  "AE69", "AG58", "AH108", #BMI
  "srh.70", "srh.75", "srh.79", #Self-rated health
  "AE320", "AG384", "AH414"  #Smoking
  )
)
# ds %>% dplyr::arrange(variable)
regex1 <- "^intage|cook|bath|dressing|toilet|feed|chair|srh|dem"
regex2 <- "^AE|AG|AH" # letter indicators of age: AE=70, AG=75, AH=79
regex3 <- "2000|2005|2009$" # numeric indicator of year
regex4 <- ".70|.75|.79$" # numeric indicator of age
regex5 <- "69|58|108|320|384|414$" # item numbers, non-descriptive

regex <- "^(\\w+?)_?(\\d{4})$" # last four digits as year

d <- ds %>%
  dplyr::mutate(
    measure = gsub(regex, "\\1", variable),
    year = gsub(regex, "\\2", variable)
  )
d %>% dplyr::arrange(variable)
