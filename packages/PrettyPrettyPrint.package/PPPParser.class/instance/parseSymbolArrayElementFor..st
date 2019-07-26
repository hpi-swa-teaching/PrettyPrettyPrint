parse-part
parseSymbolArrayElementFor: aPPPArrayNode
	
	(self currentToken isLiteral or: [ self currentToken isIdentifier ])
		ifTrue: [
			aPPPArrayNode
				addContents: (PPPLiteralNode new
					literalType: self currentToken tokenType;
					value: self currentToken content;
					yourself) ]
		ifFalse: [ ^ self syntaxError ]