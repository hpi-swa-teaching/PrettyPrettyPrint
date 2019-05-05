as yet unclassified
formatTokenPart: aString

	((aString beginsWith: '''') and: [aString endsWith: '''']) 
		ifTrue: [^ self removeFirstAndLastChar: aString].
	^ aString
	