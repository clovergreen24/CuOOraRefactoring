Class {
	#name : #TopicsQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
TopicsQuestionRetriever class >> new: cuoora [
	^ self new initializeWithCuoora: cuoora
]

{ #category : #retrieving }
TopicsQuestionRetriever >> retrieveQuestions: aUser [
	| topicsCol temp qRet |
	qRet := OrderedCollection new.
	topicsCol := OrderedCollection new.
	aUser topics do:[ :topic | topicsCol addAll: topic questions ].
	temp := topicsCol asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
	qRet := temp last: (100 min: temp size).
	^qRet reject:[:q | q user = aUser].
]
