parantheses
setParanthesesForMessageNode: aMessageNode

	| selectorPrecedence receiver arguments |
	
	selectorPrecedence := aMessageNode precedence.
	receiver := aMessageNode receiver.
	arguments := aMessageNode arguments.
	
	aMessageNode isBinaryMessage
		ifTrue: [self setParanthesesForBinaryReceiver: receiver precedence: selectorPrecedence] 
		ifFalse: [self setParanthesesForChildNode: receiver precedence: selectorPrecedence].
	
	arguments do: [:node | 
		self setParanthesesForChildNode: node precedence: selectorPrecedence]
		
	