parse-declaration
parseMethod
	self nextToken isBinaryOperator ifTrue: [ ^self parseBinaryMessageDeclaration ].
	self nextToken isMessagePart ifTrue: [ ^self parseNamedMessageDeclaration ].
	self nextToken isIdentifier ifTrue: [ ^self parseUnaryMessageDeclaration ].
	^self syntaxError