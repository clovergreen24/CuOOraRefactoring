Class {
	#name : #Question,
	#superclass : #Publication,
	#instVars : [
		'title',
		'answers',
		'topics'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser [
	^ self new initializeWithTitle: title withDescription: aDescription  withUser: aUser
]

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser topic: aTopic [
	^(self new initializeWithTitle: title withDescription: aDescription  withUser: aUser) addTopic: aTopic
]

{ #category : #adding }
Question >> addTopic: aTopic [
	topics add: aTopic.
	aTopic addQuestion: self.

]

{ #category : #'initalize-release' }
Question >> initialize [
	super initialize.
	answers := OrderedCollection new.
	topics := OrderedCollection new.
]

{ #category : #initialization }
Question >> initializeWithTitle: aTitle withDescription: aDescription withUser: aUser [
	title := aTitle .
	description := aDescription .
	user := aUser 
]

{ #category : #accessing }
Question >> title [
	^title 
]

{ #category : #accessing }
Question >> topics [
	^topics 
]
