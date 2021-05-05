Class {
	#name : #Publication,
	#superclass : #Object,
	#instVars : [
		'description',
		'timestamp',
		'user',
		'votes'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #adding }
Publication >> addVote: aVote [
	votes add: aVote
]

{ #category : #accessing }
Publication >> description [
	^ description
]

{ #category : #initialize }
Publication >> initialize [
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
]

{ #category : #queries }
Publication >> negativeVotes [
	^votes select:[:vote | vote isLike not].

]

{ #category : #queries }
Publication >> positiveVotes [
	^votes select:[:vote | vote isLike].

]

{ #category : #accessing }
Publication >> timestamp [
	^ timestamp
]

{ #category : #accessing }
Publication >> user [
	^ user
]

{ #category : #accessing }
Publication >> votes [
	^ votes
]
