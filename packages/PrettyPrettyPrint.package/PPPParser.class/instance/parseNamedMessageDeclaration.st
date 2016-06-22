as yet unclassified
parseNamedMessageDeclaration
	| node |
	node := PPPMethodNode new.
	
	[self nextToken isMessagePart] whileTrue: [
		node
			addArgument: (self step: #identifier) content
			name: (self step: #identifier) content ].
	
	^node
		selector: (node arguments inject: '' into: [ :concat :part | concat, part first ]);
		bodySequence: self parseSequence;
		yourself