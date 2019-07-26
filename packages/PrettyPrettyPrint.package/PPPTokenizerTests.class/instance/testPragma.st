testing
testPragma
	
	| stream tokenizer |
	
	stream := 'newlineAfterTemporaryDeclaration
	<preference: ''Add a newline after declaration of temporaries''
		category: ''PrettyPrettyPrint<<>>>>''
		type: #Boolean>
	^true'.
	tokenizer := PPPTokenizer on: stream.
	self
		assert: { 'newlineAfterTemporaryDeclaration' . #identifier }
			equalsToken: tokenizer next;
		assert: { '<preference: ''Add a newline after declaration of temporaries''
		category: ''PrettyPrettyPrint<<>>>>''
		type: #Boolean>' . 
				#pragma }
			equalsToken: tokenizer next;
		assert: { '^' . #special } equalsToken: tokenizer next;
		assert: { 'true' . #identifier } equalsToken: tokenizer next