as yet unclassified
parseBinaryMessage: aNode
	| node operator operand |
	node := PPPMethodNode new.
	
	operator := self currentToken second.
	operand := self step second.
	
	^node
		addArgument: operator name: operand;
		selector: operator;
		bodySequence: self parseSequence;
		yourself