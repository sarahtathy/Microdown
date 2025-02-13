"
I characterize one-liners.
They do not know `consumeLine:` beacuse they are composed of only one line.
"
Class {
	#name : 'MicSingleLineBlock',
	#superclass : 'MicAbstractBlock',
	#category : 'Microdown-Model',
	#package : 'Microdown',
	#tag : 'Model'
}

{ #category : 'public' }
MicSingleLineBlock >> addLineAndReturnNextNode: line [
	"By default skip the rest of the line."

	^ self
]

{ #category : 'testing' }
MicSingleLineBlock >> canConsumeLine: line [
	"return if this block can consume line"
	
	^ false 
]
