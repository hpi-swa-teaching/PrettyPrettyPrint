scanning
scanPragma
	| token currentToken content |
	
	token := self flushToken: (PPPToken new
		position: indexCount;
		tokenType: #pragma;
		yourself).
	
	content := WriteStream with: '<'.
	self step.
	
	[	currentToken := self flushToken: self nextToken.
		content
			nextPutAll: (currentToken whitespaces inject: '' into: [ :s :t | s, t content ]);
			nextPutAll: currentToken content.
		currentToken isBinaryOperator not or: [currentToken content ~= '>']] whileTrue.
	
	^token
		content: content contents;
		yourself