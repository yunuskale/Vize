# 1.1
url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
download.file(url, destfile = "MapsThatChangedOurWorld_StoryMap_Data.csv")

# 1.2
maps <- read.csv("MapsThatChangedOurWorld_StoryMap_Data.csv",header = TRUE, sep = ";")
maps = as.data.frame(maps)

# 1.3
maps$Latitude <- as.numeric(gsub("N", "", maps$Latitude))

# 1.4
idx <- grep("W", maps$Longitude)

# 1.5
maps$Longitude <- as.numeric(gsub("[EW]", "", maps$Longitude))

# 1.6
maps$Year <- as.numeric(gsub("AD", "", maps$Year))

# 1.7
maps$Longitude <- as.numeric(maps$Longitude)
maps$Latitude <- as.numeric(maps$Latitude)

