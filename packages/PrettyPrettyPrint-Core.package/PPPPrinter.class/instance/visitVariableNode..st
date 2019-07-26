visit-node
visitVariableNode: aPPPVariableNode
	
	| fitsInLine |
	
	fitsInLine := (self nodeFitsInLine: aPPPVariableNode).
	fitsInLine ifFalse: [ self incrementIndent; newLineIndent ].
	self currentLine nextPutAll: aPPPVariableNode name.
	fitsInLine ifFalse: [ self decrementIndent ]