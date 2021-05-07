Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#category : #'TP-Refactoring-Model'
}

{ #category : #formatting }
QuestionRetriever >> cutAndSortQuestions: questions [ 
	^ self cutQuestions: (self sortQuestions: questions)

]

{ #category : #formatting }
QuestionRetriever >> cutQuestions: questions [ 
	^ questions last: (100 min: questions size).

]

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestions: aUser [
	self subclassResponsibility 
]

{ #category : #sorting }
QuestionRetriever >> sortQuestions: questions [
		^ questions asSortedCollection: [ :a :b | a positiveVotesAmount > b positiveVotesAmount ].

]
