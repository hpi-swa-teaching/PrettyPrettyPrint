visit-node
visitLiteralNode: aPPPLiteralNode
	
	| fitsInLine |
	
	fitsInLine := self nodeFitsInLine: aPPPLiteralNode.
	fitsInLine ifFalse: [ self incrementIndent; newLineIndent ].
	self currentLine nextPutAll: aPPPLiteralNode value.
	fitsInLine ifFalse: [ self decrementIndent ]