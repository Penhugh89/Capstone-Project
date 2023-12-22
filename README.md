Final Project for Coursera Capstone Course
This is a Peer-graded Course Project which tackles a brand-new application: analysis of text data and natural language processing.  It involves:

i)	Creating a Shiny application that takes an input a phrase (multiple words), one clicks submit and it predicts the next word, and deploying it on Rstudio’s servers; and 

ii)	Creating a five slide deck with R presentation to pitch your algorithm and application to your boss or investor.  


The basic goal for the project is to build a predictive model of English text.  This involved completing the eight (8) tasks listed below, over the time span of the course.  This assignment focuses on the last two (2) tasks.

a)	Task 0 – Understanding the problem.  Obtain the data from the https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Cousera-SwiftKey.zip and get familiar with the background for the project.

b)	Task 1 - Getting and cleaning the data.  Get familiar with the English database and do the necessary cleaning.  i)  Identify appropriate tokens such as words punctuation and numbers – tokenization – by writing a function that takes a file as input and returns a tokenized version of it.  ii) Profanity filtering - remove profanity and other words you do not want to predict. 

c)	Task 2 – Exploratory data analysis.  Develop an understanding of the various statistical properties of the dataset.  For example, how frequently do certain words, pairs of words or triplets of words, appear together?

d)	Task 3 – Modelling.  Develop a statistical model for the data.  Based on the combination of words observed in the dataset, build an n=gram model which allows you to predict a word given the previous one, two or three words.

e)	Task 4 – Prediction modelling.  Build and evaluate your a predictive model for text by using the n-gram and backoff models built in previous tasks to build and evaluate your predictive model.  Carefully consider your code for, and examine it for, efficiency and accuracy.  Use timing software to evaluate the computational complexity of your model.  Evaluate the model’s accuracy by using different metrics like perplexity, accuracy at the first word, second word and third word. 

f)	Task 5 – Creative exploration.  Explore new models and data to improve your predictive model; then evaluate your new predictions on accuracy and efficiency.  That is, go through your list of ideas to improve the performance of the model in various ways then evaluate the performance of the model.  

g)	Task 6 – Data product.  Build a front end that can be used by a wide audience to demonstrate how your predictive algorithm works.  That is, create a Shiny app that accepts an n-gram and predicts the next word.

h)	Task 7 – Slide deck.  Create a slide deck that presents your work and explains why someone should be interested in it.  This slide deck should be at most five slides and be built using Rstudio Presenter tools.
