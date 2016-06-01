as yet unclassified
parseBinaryMessage: aNode
	| node operator operand |
	node := PPPMethodNode new.
	
	operator := self step second.
	operand := (self step: #binaryOperator) second.
	
	^node
		addArgument: operator name: operand;
		selector: operator;
		bodySequence: self parseSequence;
		yourself