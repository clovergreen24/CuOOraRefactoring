Class {
	#name : #Topic,
	#superclass : #Object,
	#instVars : [
		'name',
		'description',
		'questions'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'intance creation' }
Topic class >> name: aName description: aDescription [
	^ self new
		name: aName;
		description: aDescription;
		yourself
]

{ #category : #accessing }
Topic >> addQuestion: aQuestion [
	questions add: aQuestion 
]

{ #category : #accessing }
Topic >> description [
	^ description
]

{ #category : #accessing }
Topic >> description: aDescription [
	description := aDescription 
]

{ #category : #initialize }
Topic >> initialize [
	questions := OrderedCollection new.
]

{ #category : #accessing }
Topic >> name [
	^name
]

{ #category : #accessing }
Topic >> name: aName [
	name := aName
]

{ #category : #accessing }
Topic >> questions [
	^ questions
]
