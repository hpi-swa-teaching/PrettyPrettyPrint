parse-declaration
parsePragma
	| node |
	node := PPPMethodNode new.
	
	self nextToken isMessagePart
		ifTrue: [[self nextToken isMessagePart] whileTrue: [self parsePragmaMessagePartFor: node]]
		ifFalse: [self nextToken isIdentifier ifTrue: [ ^self parseUnaryMessageDeclaration ]].
	
	^node
		selector: (node arguments inject: '' into: [ :concat :part | concat, part first ]);
		bodySequence: self parseSequence;
		yourself