as yet unclassified
setUp

	| sequenceNode |		
	self allPragmas: (OrderedCollection new 
		add: (PPPPragmaNode new content: '<PrettyPrint: ''ignore'' option: True>');
		add: (PPPPragmaNode new content: '<PrettyPrint: ''maxLineLength'' option: 10>');
		add: (PPPPragmaNode new content: '<Dummy>');
		yourself).
	
	self relevantParsedPragmas: (OrderedCollection new 
		add: (PPPMethodNode new arguments: 
			(OrderedCollection new 
				add: #('PrettyPrint:' . 'ignore');
				add: #('option:'. True);
				yourself));
		add: (PPPMethodNode new arguments: 
			(OrderedCollection new 
				add: #('PrettyPrint:' . 'maxLineLength');
				add: #('option:'. 10);
				yourself));
		yourself).
		
	sequenceNode := PPPSequenceNode new statements: self allPragmas.
	
	self dummyAst: (PPPMethodNode new bodySequence: sequenceNode).