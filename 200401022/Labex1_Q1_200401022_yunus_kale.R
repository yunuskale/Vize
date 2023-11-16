# 1.1
url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
download.file(url, destfile = "MapsThatChangedOurWorld_StoryMap_Data.csv")

# 1.2
maps <- read.csv("MapsThatChangedOurWorld_StoryMap_Data.csv",header = TRUE, sep = ";")
maps = as.data.frame(maps)

# 1.3
maps$Latitude <- as.numeric(gsub("N", "", maps$Latitude))

