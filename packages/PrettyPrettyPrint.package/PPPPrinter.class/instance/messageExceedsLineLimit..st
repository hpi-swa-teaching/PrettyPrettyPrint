helpers-printing
messageExceedsLineLimit: aNode
	| arguments argumentsLength |
	
	arguments := aNode arguments collect: [ :argument | self visitValueNode: argument ].
	argumentsLength := arguments inject: 0 into: [ :sum :argument | sum + argument size ].
	
	^argumentsLength + aNode selector size > self profile maxLineLength