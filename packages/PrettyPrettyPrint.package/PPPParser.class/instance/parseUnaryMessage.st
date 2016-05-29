as yet unclassified
parseUnaryMessage
	^PPPMethodNode new
		selector: self currentToken second;
		bodySequence: self parseSequence;
		yourself