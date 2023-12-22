
getwd()
library(tm)
library(ngramrr)

suppressWarnings(library(knitr))
rm(list = ls(all.names = TRUE))
trainurl <- "https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip"
traindatafile <- "data/Coursera-SwiftKey.zip"

if (!file.exists('data')) {
  dir.create('data')
}

if (!file.exists("data/final/en_US")) {
  tempFile <- tempfile()
  download.file(trainurl, tempFile)
  unzip(tempFile, exdir = "data")
}

getCorpus <- function(){
# blogs 
con <- file("data/final/en_US/en_US.blogs.txt", open = "r")
blogs <- suppressWarnings(readLines(con, encoding = "UTF-8", skipNul = TRUE))
close(con)

# news
con <- file("data/final/en_US/en_US.news.txt", open = "r")
news <- suppressWarnings(readLines(con, encoding = "UTF-8", skipNul = TRUE))
close(con)

# twitter
twitterFileName <- 
con <- file("data/final/en_US/en_US.twitter.txt", open = "r")
twitter <- suppressWarnings(readLines(con, encoding = "UTF-8", skipNul = TRUE))
close(con)
rm(con)



  #Sampling
  set.seed(2510)
  blogs <- sample(blogs, size = 500)
  news <- sample(news, size = 500)
  twitter <- sample(twitter, size = 500)
  
  # Union corpora
  corpora <- c(news,blogs,twitter)
  corpora <-  iconv(corpora, to ="utf-8")
  corpora <- VectorSource(corpora)
  corpora <- VCorpus(corpora)
 

preprocess <- function(text){
  toSpace <- content_transformer(function(x, pattern) gsub(pattern, " ", x))
  text <- tm_map(text, toSpace, "/|@|//|$|:|:)|*|&|!|?|_|-|#|")
  text <- tm_map(text, removeNumbers)
  text <- tm_map(text, content_transformer(tolower))
  text <- tm_map(text, removePunctuation)
  text <- tm_map(text, stemDocument)
  text <- tm_map(text, stripWhitespace)
  text
}


corpora <- preprocess(corpora)
corpora
}

saveRDS(getCorpus(),'corpus.RData')