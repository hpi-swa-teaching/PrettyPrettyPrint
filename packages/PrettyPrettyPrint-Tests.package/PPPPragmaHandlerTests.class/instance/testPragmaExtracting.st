as yet unclassified
testPragmaExtracting
	
	| parsedPragmas relevantPragmas expectedRelevantPragmas |
	
	expectedRelevantPragmas := OrderedCollection new
		add: self validIgnoreParsedPragma;
		yourself.
	
	parsedPragmas := OrderedCollection new
		addAll: expectedRelevantPragmas;
		add: (PPPMethodNode new
				arguments: OrderedCollection new;
				bodySequence: OrderedCollection new;
				selector: 'hello');
		add: (PPPMethodNode new
				arguments: (OrderedCollection new
						add: #( 'PrettyPrint:' #ignore );
						yourself);
				bodySequence: (PPPSequenceNode new);
				selector: 'PrettyPrint:');
		yourself.
	
	relevantPragmas := PPPPragmaHandler new
		extractRelevantPragmasFrom: parsedPragmas.
	self assert: expectedRelevantPragmas equals: relevantPragmas