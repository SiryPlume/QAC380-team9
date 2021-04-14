library(stringr)
library(dplyr)
block_text <- read_csv("~/Desktop/ /QAC380/block_text.csv")

CourtData <- block_text[c(1,7)]

CourtData <- rename(CourtData, Document = original_file_name)
CourtData <- rename(CourtData, Text = block_text)

words <- c("COVID", "pandemic")
temp <- strsplit(CourtData$Text[55], " ")[[1]]
temp <- unique(tolower(temp))

str_detect(temp, "if")
