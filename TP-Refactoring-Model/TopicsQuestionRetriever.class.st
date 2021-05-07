Class {
	#name : #TopicsQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
TopicsQuestionRetriever >> retrieveQuestions: aUser [
	^(self cutAndSortQuestions: aUser topicQuestions) 
		reject:[:q | q isFromUser: aUser].

]
