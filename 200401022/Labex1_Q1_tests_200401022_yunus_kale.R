
# Workspace'deki bütün değişkenleri sil
rm(list = ls())

# Eğer mevcut ise MapsThatChangedOurWorld_StoryMap_Data.csv dosyasını sil
if (file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv")) {
  file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")
}
source("Labex1_Q1_200401022_yunus_kale.R")
library(testthat)

test_that("MapsThatChangedOurWorld_StoryMap_Data.csv adlı dosya aktif dizinde mevcuttur", {
  file_path <- "MapsThatChangedOurWorld_StoryMap_Data.csv"
  testthat::expect_true(file.exists(file_path), 
                        "Dosya bulunamadı. Lütfen dosyanın aktif dizinde olduğundan emin olun.")
})
