as yet unclassified
testPragmaExtracting
	| parsedPragmas relevantPragmas expectedRelevantPragmas |
	
	parsedPragmas := OrderedCollection new 
		add: (PPPMethodNode new 
			arguments: (OrderedCollection new 
				add: #('PrettyPrint:' 'ignore');
				add: #('option:' 'True');
				yourself);
			bodySequence: (PPPSequenceNode new);
			selector: 'PrettyPrint:option:');
		add: (PPPMethodNode new
			arguments: OrderedCollection new;
			bodySequence: OrderedCollection new;
			selector: 'hello');
		yourself.
			
	relevantPragmas := PPPPragmaHandler new extractRelevantPragmasFrom: parsedPragmas.
	
	expectedRelevantPragmas := OrderedCollection new 
		add: (PPPMethodNode new 
			arguments: (OrderedCollection new 
				add: #('PrettyPrint:' 'ignore');
				add: #('option:' 'True');
				yourself);
			bodySequence: (PPPSequenceNode new);
			selector: 'PrettyPrint:option:');
		yourself.

	self assert: expectedRelevantPragmas equals: relevantPragmas.
	