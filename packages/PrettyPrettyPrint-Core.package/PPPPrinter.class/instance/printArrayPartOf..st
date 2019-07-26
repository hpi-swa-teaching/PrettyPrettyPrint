printing
printArrayPartOf: aPPPValueNode
	
	| fitsInLine |
	
	fitsInLine := self nodeFitsInLine: aPPPValueNode.
	fitsInLine ifFalse: [ self incrementIndent; newLineIndent ].
	self visitValueNode: aPPPValueNode.
	fitsInLine ifFalse: [ self decrementIndent ]