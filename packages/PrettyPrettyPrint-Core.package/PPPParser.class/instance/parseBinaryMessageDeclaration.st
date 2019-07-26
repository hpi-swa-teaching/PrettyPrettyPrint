parse-declaration
parseBinaryMessageDeclaration
	
	| node operator operand |
	
	node := PPPMethodNode new.
	
	operator := (self step: #binaryOperator) content.
	operand := (self step: #identifier) content.
	
	^ node
		addArgument: operator name: operand;
		selector: operator;
		bodySequence: self parseSequence;
		yourself