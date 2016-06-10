as yet unclassified
parseBinaryMessage: aNode
	| node operator operand |
	node := PPPMethodNode new.
	
	operator := self step content.
	operand := (self step: #binaryOperator) content.
	
	^node
		addArgument: operator name: operand;
		selector: operator;
		bodySequence: self parseSequence;
		yourself