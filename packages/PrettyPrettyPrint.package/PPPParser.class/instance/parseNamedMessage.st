as yet unclassified
parseNamedMessage
	| node |
	
	node := PPPMethodNode new.
	
	[self nextToken tokenType ~= #identifier or: [self nextToken content endsWithAColon not]] whileFalse: [
		node addArgument: (self step: #identifier) content name: (self step: #identifier) content ].
	
	^node
		selector: (node arguments inject: '' into: [ :concat :part | concat, part first ]);
		bodySequence: self parseSequence;
		yourself