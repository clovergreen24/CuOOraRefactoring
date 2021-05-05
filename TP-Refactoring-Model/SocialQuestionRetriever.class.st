Class {
	#name : #SocialQuestionRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
SocialQuestionRetriever class >> new: cuoora [
	^ self new initializeWithCuoora: cuoora
]

{ #category : #retrieving }
SocialQuestionRetriever >> retrieveQuestions: aUser [
	| followingCol temp qRet |
	qRet := OrderedCollection new.
	followingCol := OrderedCollection new.
	aUser following do:[ :follow | followingCol addAll: follow questions ].
	temp := followingCol asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
	qRet := temp last: (100 min: temp size).
	^qRet reject:[:q | q user = aUser].
]
