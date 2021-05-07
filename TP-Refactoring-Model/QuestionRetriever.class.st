Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestions: aUser [
	self subclassResponsibility 
]
