visit-node
printCommentsOf: aPPPValueNode


	aPPPValueNode comments do: [ :comment |
		(self commentFitsInLine: comment) ifFalse: [self newLineIndent].
		self currentLine nextPutAll: comment content.
		self newLineIndent ]