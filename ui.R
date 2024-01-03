ui <- fluidPage(
  titlePanel("Next Word Prediction"),
  h6("It may take several seconds"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("Ngram", label = "Select N for Ngram:", min = 1, max = 20, value = 3, step = 1),
      textInput("inputString", "Enter a partial sentence here", value = "I love"),
      submitButton("Submit", icon("refresh"))
    ),
    mainPanel(
      h2("Predicted Next Word"),
      strong("Sentence Input:"),
      tags$style(type = 'text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: blue;}'),
      textOutput('text1'),
      br(),
      strong("Sentences with Next Word Candidates:"),
      textOutput("prediction"),
      br(),
      strong("Note:"),
      tags$style(type = 'text/css', '#text2 {background-color: rgba(255,255,0,0.40); color: black;}'),
      textOutput('text2')
    )
  )
)

