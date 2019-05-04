parse-declaration
parsePragma
	| node |
	node := PPPMethodNode new.
	
	[self nextToken isMessagePart] whileTrue: [
	| argument name | 
	argument := self step.
	argument isIdentifier ifFalse: [self syntaxError].
	name := self step.
	(name isLiteral or: [name isIdentifier]) ifFalse: [self syntaxError].
		node
			addArgument: argument content
			name: name content ].
	
	^node
		selector: (node arguments inject: '' into: [ :concat :part | concat, part first ]);
		bodySequence: self parseSequence;
		yourself