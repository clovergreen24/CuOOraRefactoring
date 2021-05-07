Class {
	#name : #PopularQuestionRetriever,
	#superclass : #QuestionRetriever,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
PopularQuestionRetriever class >> new: cuoora [
	^ self new initializeWithCuoora: cuoora
]

{ #category : #initialization }
PopularQuestionRetriever >> initializeWithCuoora: aCuoora [
	cuoora := aCuoora 
]

{ #category : #retrieving }
PopularQuestionRetriever >> retrieveQuestions: aUser [
	^(self cutAndSortQuestions: cuoora popularQuestionsToday) 
		reject:[:q | q isFromUser: aUser].

]
