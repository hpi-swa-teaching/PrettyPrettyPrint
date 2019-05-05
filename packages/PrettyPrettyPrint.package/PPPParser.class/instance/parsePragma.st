parse-declaration
parsePragma
	| node |
	node := PPPMethodNode new.
	
	self nextToken isMessagePart
		ifTrue: [[self nextToken isMessagePart] whileTrue: [
			| argument name | 
			argument := self step.
			argument isIdentifier ifFalse: [self syntaxError].
			name := self step.
			(name isIdentifier or: [name isLiteral]) ifFalse:[self syntaxError].
			node
				addArgument: argument content
				name: name content ]]
		ifFalse: [self nextToken isIdentifier ifTrue: [ ^self parseUnaryMessageDeclaration ]].
	
	^node
		selector: (node arguments inject: '' into: [ :concat :part | concat, part first ]);
		bodySequence: self parseSequence;
		yourself