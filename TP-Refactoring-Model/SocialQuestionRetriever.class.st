Class {
	#name : #SocialQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
SocialQuestionRetriever >> retrieveQuestions: aUser [
	^(self cutAndSortQuestions: aUser followingQuestions) 
		reject:[:q | q isFromUser: aUser].

]
