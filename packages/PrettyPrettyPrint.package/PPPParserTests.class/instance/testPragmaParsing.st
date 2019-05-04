testing
testPragmaParsing
	| tokens methodNode expectedParsedPragmaNode|
	tokens := {
		PPPToken type: #identifier content: 'PrettyPrint:'.
		PPPToken type: #string content: 'ignore'.
		PPPToken type: #identifier content: 'option:'.
		PPPToken type: #identifier content: 'True'}.
	
	methodNode := PPPParser new parsePragmaTokenStream: (ReadStream on: tokens).
	
	expectedParsedPragmaNode := PPPMethodNode new arguments: (OrderedCollection new 
			add: #('PrettyPrint:' . 'ignore');
			add: #('option:'. True);
			yourself).
	
	self assert: expectedParsedPragmaNode equals: methodNode.
	