library(stringi)
library(dplyr)
block_text <- read_csv("~/Desktop/ /block_text.csv")

CourtData <- block_text[c(1,7)]

CourtData <- rename(CourtData, Document = original_file_name)
CourtData <- rename(CourtData, Text = block_text)

#CourtData$Date <- substring(CourtData$Document, 1, 6)
#CourtData$State <- substring(CourtData$Document, 1, 2)

#CourtData$Date <- as.numeric(CourtData$Date)
#CourtData$State <- as.numeric(CourtData$Date)
