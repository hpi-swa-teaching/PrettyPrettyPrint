as yet unclassified
validIgnoreParsedPragma
 	^ PPPMethodNode new 
		arguments: (OrderedCollection new 
			add: #('PrettyPrint:' '''ignore''');
			add: #('option:' 'True');
			yourself);
		bodySequence: (PPPSequenceNode new);
		selector: 'PrettyPrint:option:'
	