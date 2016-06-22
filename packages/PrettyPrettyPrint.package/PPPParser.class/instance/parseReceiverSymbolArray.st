as yet unclassified
parseReceiverSymbolArray
	| receiver |
	receiver := PPPArrayNode new
		constant: true;
		yourself.
	self step: #symbolArrayStart.
		
	[self step content ~= ')'] whileTrue: [
		(#(identifier number string character) includes: self currentToken tokenType)
			ifTrue: [ receiver contents add: (PPPLiteralNode new
				literalType: self currentToken tokenType;
				value: self currentToken content) ]
			ifFalse: [ ^self syntaxError ]].
		
	^receiver