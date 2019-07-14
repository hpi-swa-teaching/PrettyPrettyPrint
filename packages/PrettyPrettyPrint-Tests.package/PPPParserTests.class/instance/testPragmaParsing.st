testing
testPragmaParsing
	
	methodNode := PPPParser parsePragmaTokenStream: (ReadStream on: tokens).
	
	tokens := { PPPToken type: #identifier content: 'PrettyPrint:' . 
		PPPToken type: #string content: 'ignore' . 
		PPPToken type: #identifier content: 'option:' . 
		PPPToken type: #identifier content: 'True' . 
		PPPToken type: #eof content: '' }.
	
	methodNode := PPPParser new
		parsePragmaTokenStream: (ReadStream on: tokens).
	
	expectedParsedPragmaNode := PPPMethodNode new
		arguments: (OrderedCollection new
				add: #( 'PrettyPrint:' 'ignore' );
				add: #( 'option:' 'True' );
				yourself);
		bodySequence: (PPPSequenceNode new);
		selector: 'PrettyPrint:option:'.
	self assert: (expectedParsedPragmaNode matches: methodNode)