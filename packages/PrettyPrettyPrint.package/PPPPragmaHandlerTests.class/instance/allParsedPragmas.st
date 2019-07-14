accessing
allParsedPragmas	
	
	^ OrderedCollection new 
		addAll: self relevantParsedPragmas;
		add: (PPPMethodNode new 
			arguments: OrderedCollection new;
			bodySequence: (PPPSequenceNode new);
			selector: 'Dummy');
		yourself