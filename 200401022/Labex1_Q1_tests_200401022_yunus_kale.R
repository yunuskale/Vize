
# Workspace'deki bütün değişkenleri sil
rm(list = ls())

# Eğer mevcut ise MapsThatChangedOurWorld_StoryMap_Data.csv dosyasını sil
if (file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv")) {
  file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")
}
source("Labex1_Q1_200401022_yunus_kale.R")
library(testthat)

# 2.4
test_that("MapsThatChangedOurWorld_StoryMap_Data.csv adlı dosya aktif dizinde mevcuttur", {
  file_path <- "MapsThatChangedOurWorld_StoryMap_Data.csv"
  testthat::expect_true(file.exists(file_path), 
                        "Dosya bulunamadı. Lütfen dosyanın aktif dizinde olduğundan emin olun.")
})

# 2.5
test_that("maps adlı değişken Global Workspace'te mevcuttur", {
  testthat::expect_true(exists("maps", envir = .GlobalEnv), 
                        "maps adlı değişken Global Workspace'te bulunamadı.")
})

# 2.6
test_that("maps nesnesi bir data.frame'dir", {
  testthat::expect_true(is.data.frame(maps), 
                        "maps nesnesi bir data.frame değildir.")
})

# 2.7
test_that("maps adlı data.frame'in ilk sütunun adı 'City' olmalıdır", {
  testthat::expect_identical(names(maps)[1], "City", 
                             info = "maps data.frame'in ilk sütununun adı 'City' olmalıdır.")
})

# 2.8
test_that("maps adlı data.frame'in 5. sütunun adında 'Title' kelimesi geçmelidir", {
  expected_keyword <- "Title"
  testthat::expect_true(any(grepl(expected_keyword, names(maps)[5])), 
                        paste("maps data.frame'in sütun adları arasında '", expected_keyword, "' kelimesi geçmemektedir."))
})

# 2.9
test_that("Latitude adlı sütun numeric değerlerden oluşmalıdır", {
  testthat::expect_true(all(is.numeric(maps$Latitude)), 
                        "Latitude adlı sütun numeric değerlerden oluşmamaktadır.")
})

# 2.11
test_that("idx nesnesi Global Workspace'te mevcuttur", {
  testthat::expect_true(exists("idx", envir = .GlobalEnv), 
                        "idx nesnesi Global Workspace'te bulunamadı.")
})

# 2.12
test_that("idx nesnesinin tipi (class'ı) integer'dir", {
  testthat::expect_identical(class(idx), "integer", 
                             info = "idx nesnesinin tipi (class'ı) integer değildir.")
})

# 2.10
test_that("Longitude adlı sütun numeric değerlerden oluşmalıdır", {
  testthat::expect_true(all(is.numeric(maps$Longitude)), 
                        "Longitude adlı sütun numeric değerlerden oluşmamaktadır.")
})

# 2.13
test_that("Year adlı sütun numeric değerlerden oluşmalıdır", {
  testthat::expect_true(all(is.numeric(maps$Year)), 
                        "Year adlı sütun numeric değerlerden oluşmamaktadır.")
})

# 2.14
test_that("Longitude adlı sütunun 3., 9. ve 10. elementleri negatif numeric değerler içermelidir", {
  elements_to_check <- c(3, 9, 10)
  testthat::expect_true(all(maps$Longitude[elements_to_check] < 0), 
                        "Longitude adlı sütunun belirtilen elemanları negatif numeric değerler içermemektedir.")
})

