Class {
	#name : #NewsQuestionRetriever,
	#superclass : #QuestionRetriever,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
NewsQuestionRetriever class >> new: cuoora [
	^ self new initializeWithCuoora: cuoora
]

{ #category : #initialization }
NewsQuestionRetriever >> initializeWithCuoora: aCuoora [
	cuoora := aCuoora 
]

{ #category : #retrieving }
NewsQuestionRetriever >> retrieveQuestions: aUser [
	^(self cutAndSortQuestions: cuoora todayQuestions) 
		reject:[:q | q isFromUser: aUser].

]
