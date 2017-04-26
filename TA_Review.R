# Load the required package.
library(RTextTools)
library(e1071)

# Put vocabulary in a matrix.
V = rbind (c('Beautiful'), c('Good Service'),c('Good Location'),c('Superb'),c('Cleanliness'),c('Mosquitoes'),c('Unfriendly'),c('bad experience'))

#Check the class and Type
typeof(V)
class(V)

# Put test review inside a matrix
test_review = rbind ('Good location but the staff was unfriendly.')

#Check the class and Type
typeof(test_review)
class(test_review)

#Put Vocab and test_review together
review = rbind (V,test_review)
print (review)

#Training the Model
matrix = create_matrix(review[,1], language = "english",removeStopwords = FALSE,removeNumbers=TRUE, 
                       stemWords=FALSE)
mat = as.matrix(matrix)
classifier = naiveBayes(mat[1:8,], as.factor(reviews[1:8,2]) )


#Predicting the test_review
predicted = predict(classifier, mat[9:9], type="raw"); 
predicted
