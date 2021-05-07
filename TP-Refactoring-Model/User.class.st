Class {
	#name : #User,
	#superclass : #Object,
	#instVars : [
		'questionRetriever',
		'questions',
		'answers',
		'username',
		'password',
		'topics',
		'following',
		'votes'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance-creation' }
User class >> username: aUsername password: aPassword questionRetriever: aQuestionRetriever [
	^ self new initializeWithUsername: aUsername withPassword: aPassword withQuestionRetriever: aQuestionRetriever 
]

{ #category : #adding }
User >> addAnswer: anAnswer [
	answers add: anAnswer 

]

{ #category : #adding }
User >> addQuestion: aQuestion [
	questions add: aQuestion
]

{ #category : #adding }
User >> addTopic: aTopic [
	topics add: aTopic 

]

{ #category : #adding }
User >> addVote: aVote [
	votes add: aVote
]

{ #category : #accessing }
User >> answers [
	^ answers
]

{ #category : #adding }
User >> follow: aUser [
	following add: aUser 
]

{ #category : #accessing }
User >> following [
	^ following
]

{ #category : #queries }
User >> followingQuestions [
	^ following flatCollect:[ :follow | follow questions ].

]

{ #category : #initialize }
User >> initialize [

	questions := OrderedCollection new.  
	answers := OrderedCollection new. 
	topics := OrderedCollection new. 
	following := OrderedCollection new. 
	votes := OrderedCollection new.
]

{ #category : #initialization }
User >> initializeWithUsername: aUsername withPassword: aPassword withQuestionRetriever: aQuestionRestriever [
	username := aUsername .
	password := aPassword .
	questionRetriever := aQuestionRestriever 
]

{ #category : #accessing }
User >> password [
	^ password
]

{ #category : #accessing }
User >> questionRetriever [
	^ questionRetriever
]

{ #category : #accessing }
User >> questions [
	^ questions
]

{ #category : #queries }
User >> questionsOfInterest [
	^ questionRetriever retrieveQuestions: self.
]

{ #category : #queries }
User >> topicQuestions [
	^ topics flatCollect: [ :topic | topic questions ]

]

{ #category : #accessing }
User >> topics [
	^ topics
]

{ #category : #accessing }
User >> username [
	^ username
]

{ #category : #accessing }
User >> votes [
	^ votes
]
