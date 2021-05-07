Class {
	#name : #CuOOra,
	#superclass : #Object,
	#instVars : [
		'users',
		'topics',
		'questions'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #adding }
CuOOra >> addQuestion: aQuestion [
	questions add: aQuestion
]

{ #category : #adding }
CuOOra >> addQuestion: aQuestion forUser: aUser [
	aUser addQuestion: aQuestion.
	self addQuestion: aQuestion.
]

{ #category : #adding }
CuOOra >> addTopic: aTopic [
	topics add: aTopic 

]

{ #category : #adding }
CuOOra >> addUser: aUser [
	users add: aUser 

]

{ #category : #queries }
CuOOra >> averageVotes [
	^self totalPositiveVotesAmount / self todayQuestions size.

]

{ #category : #initialize }
CuOOra >> initialize [
	users := OrderedCollection new.
	topics := OrderedCollection new.
	questions := OrderedCollection new
]

{ #category : #queries }
CuOOra >> popularQuestionsToday [
	^self todayQuestions select:[:q | q positiveVotesAmount >= self averageVotes ]

]

{ #category : #accessing }
CuOOra >> questions [
	^ questions
]

{ #category : #queries }
CuOOra >> todayQuestions [
		^questions select:[:q | (q isFromToday)].

]

{ #category : #accessing }
CuOOra >> topics [
	^ topics
]

{ #category : #queries }
CuOOra >> totalPositiveVotesAmount [
	^ questions sum: [:q | q positiveVotesAmount ]

]

{ #category : #accessing }
CuOOra >> users [
	^ users
]
