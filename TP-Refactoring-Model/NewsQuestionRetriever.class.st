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
	| newsCol temp qRet |
	qRet := OrderedCollection new.
	newsCol := OrderedCollection new.
	cuoora questions do:[:q | (q timestamp asDate = Date today) ifTrue: [newsCol add: q]].
	temp := newsCol asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
	qRet := temp last: (100 min: temp size).
	^qRet reject:[:q | q user = aUser].
]
