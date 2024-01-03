
 
library(shiny)
library(stringr)
library(tm)
library(RWeka)
library(purrr)

corpus <- readRDS('corpus.RData')

createNgrams <- function(text, n) {
  ngrams <- TermDocumentMatrix(Corpus(VectorSource(text)), control = list(tokenize = NGramTokenizer(min = n, max = n)))
  ngrams_freq_df <- data.frame(word = names(sort(rowSums(as.matrix(ngrams)), decreasing = TRUE)), freq = ngrams_freq)
  ngrams_freq_df
}


extractLowerGram <- function(x, n) paste(head(strsplit(as.character(x), ' ')[[1]], n - 1), collapse = ' ')

predict <- function(x, n, BackoffModel) {
  xs <- paste(tail(strsplit(stripWhitespace(stemDocument(removePunctuation(tolower(removeNumbers(x)))))[[1]], ' '), n - 1), collapse = ' ')
  
  currentModel <- BackoffModel[[paste(n, "grams")]]
  currentModel$lowerGram <- lapply(currentModel[['word']], extractLowerGram, n)
  matchList <- currentModel[currentModel$lowerGram == xs,]
  
  if (dim(matchList)[1] != 0) {
    candidateList <- lapply(head(as.character(matchList[['word']]), 3), function(x) tail(strsplit(x, " "), 1)[[1]][[n]])
    mesg <<- paste("Next word is predicted using ", n, "gram.")
    candidateList
  } else if (n == 2) {
    mesg <<- "No Matches Found"
  } else {
    predict(xs, n - 1, BackoffModel)
  }
}

BackoffModels <- function(n) setNames(lapply(2:n, function(i) createNgrams(corpus, i)), paste(2:n, "grams"))
server <- function(input, output) {
  values <- reactiveValues(BackoffModel = NULL, mesg = NULL)
  
  observe({ values$BackoffModel <- BackoffModels(input$Ngram) })
  
  output$prediction <- renderText({
    if (is.null(values$BackoffModel)) return(NULL)
    
    result <- predict(input$inputString, input$Ngram, values$BackoffModel)
    output$text2 <- renderText({mesg})
    paste(input$inputString, result, ',')
  })
  
  output$text1 <- renderText({ input$inputString })
}
