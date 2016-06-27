as yet unclassified
printCloseParethesesOf: aNode on: aBuffer
	aNode hasParentheses ifTrue: [ aBuffer nextPut: $) ]