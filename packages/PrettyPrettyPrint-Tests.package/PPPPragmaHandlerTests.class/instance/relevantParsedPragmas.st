accessing
relevantParsedPragmas
	
	^OrderedCollection new
		add: self validIgnoreParsedPragma;
		add: (PPPMethodNode new
				arguments: (OrderedCollection new
						add: #( 'PrettyPrint:' '#maxLineLength' );
						add: #( 'option:' '10' );
						yourself);
				bodySequence: (PPPSequenceNode new);
				selector: 'PrettyPrint:option:');
		yourself