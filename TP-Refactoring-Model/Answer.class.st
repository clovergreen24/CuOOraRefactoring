Class {
	#name : #Answer,
	#superclass : #Publication,
	#instVars : [
		'question'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Answer class >> new: anAnswer user: aUser question: aQuestion [
	^ self new initializeWithDescription: anAnswer withUser: aUser withQuestion: aQuestion
]

{ #category : #initialization }
Answer >> initializeWithDescription: aDescription withUser: aUser withQuestion: aQuestion [
	description := aDescription.
	user := aUser .
	question := aQuestion 
]

{ #category : #accessing }
Answer >> isTopAnswer [
	"Ignore method"
	^ self positiveVotes >=  ((question sum: [:answer | answer positiveVotes size ]) / question answer size )
]
