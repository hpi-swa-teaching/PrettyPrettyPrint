as yet unclassified
parseUnaryMessage
	^PPPMethodNode new
		selector: (self step: #identifier) second;
		bodySequence: self parseSequence;
		yourself