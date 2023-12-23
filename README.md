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


Quantitative Evaluation of the Predictive Model:

Accuracy Assessment:
     Metric: Compare model predictions with actual subsequent words.
     Procedure: Used to calculate the accuracy as the percentage of correctly predicted next words.

Precision, Recall, and F1 Score Calculation:
     Metrics:
     Precision: Proportion of true positives among all positive predictions.
     Recall: Proportion of true positives among all actual positives.
     F1 Score: Harmonic mean of precision and recall.
     Procedure: These metrics are used to assess the model's ability to provide accurate and relevant predictions.

 Efficiency Evaluation:
     Metric: Response time, measured from user input to prediction generation.
     Procedure: Used to assess the time taken to ensure prompt and interactive results.

Summary of Findings:

    The model demonstrates commendable accuracy, achieving high precision and recall values.
    Precision provides insight into the proportion of relevant predictions, while recall assesses the coverage of          actual positive instances.
    The F1 score balances precision and recall, offering a comprehensive evaluation of the model's overall performance.

Future Optimization:
    Continuous refinement and optimization of the model are necessary to enhance predictive performance.
    User feedback and additional data sources can contribute to ongoing improvements.
    The goal is to maintain and improve the model's effectiveness in real-world language processing tasks.

Conclusion:
Quantitative evaluation confirms the model's accuracy, precision, and recall, ensuring its reliability in terms of  appropriate next-word predictions. Ongoing optimization efforts and user feedback will further help with the model's performance in practical applications.
