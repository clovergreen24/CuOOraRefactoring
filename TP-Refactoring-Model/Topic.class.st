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
	^ self new initializeWithName: aName withDescription: aDescription

]

{ #category : #adding }
Topic >> addQuestion: aQuestion [
	questions add: aQuestion 
]

{ #category : #accessing }
Topic >> description [
	^ description
]

{ #category : #initialize }
Topic >> initialize [
	questions := OrderedCollection new.
]

{ #category : #initialization }
Topic >> initializeWithName: aName withDescription: aDescription [
	name := aName.
	description := aDescription.
]

{ #category : #accessing }
Topic >> name [
	^name
]

{ #category : #accessing }
Topic >> questions [
	^ questions
]
