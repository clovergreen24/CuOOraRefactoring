Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #initialization }
QuestionRetriever >> initializeWithCuoora: aCuoora [
	cuoora := aCuoora 
]

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestions: aUser [
	self subclassResponsibility 
]
