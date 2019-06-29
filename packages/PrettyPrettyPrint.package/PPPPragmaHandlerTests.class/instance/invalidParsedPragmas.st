as yet unclassified
invalidParsedPragmas

	^ OrderedCollection new 
		add: (PPPMethodNode new
			arguments: OrderedCollection new;
			bodySequence: OrderedCollection new;
			selector: 'hello');
		add: (PPPMethodNode new 
			arguments: (OrderedCollection new 
				add: #('PrettyPrint:' '#ignore');
				yourself);
			bodySequence: (PPPSequenceNode new);
			selector: 'PrettyPrint:');
		yourself.
	