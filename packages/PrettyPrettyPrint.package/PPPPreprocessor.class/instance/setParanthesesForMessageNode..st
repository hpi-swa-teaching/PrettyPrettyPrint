visit-node
setParanthesesForMessageNode: aMessageNode

	| selectorPrecedence receiver arguments |
	
	selectorPrecedence := aMessageNode precedence.
	receiver := aMessageNode receiver.
	arguments := aMessageNode arguments.
	
	self setParanthesesForChildNode: receiver precedence: selectorPrecedence.
	arguments do: [:node | 
		self setParanthesesForChildNode: node precedence: selectorPrecedence]
		
	
