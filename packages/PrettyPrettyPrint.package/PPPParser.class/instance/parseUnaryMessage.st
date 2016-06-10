as yet unclassified
parseUnaryMessage
	^PPPMethodNode new
		selector: (self step: #identifier) content;
		bodySequence: self parseSequence;
		yourself