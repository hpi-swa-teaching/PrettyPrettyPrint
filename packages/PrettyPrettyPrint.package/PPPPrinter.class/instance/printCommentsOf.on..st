visit-node
printCommentsOf: aNode on: aBuffer 
	aNode comments do: [ :comment |
		aBuffer nextPutAll: comment content.
		self newLineIndentOn: aBuffer ]