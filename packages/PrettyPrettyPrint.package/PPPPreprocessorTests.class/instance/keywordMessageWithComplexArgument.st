as yet unclassified
keywordMessageWithComplexArgument
	
	^ PPPMessageNode
		receiver: nil
		selector: 'first:'
		argument: (self unaryMessageNode
			hasParentheses: true;
			needsParantheses: true)