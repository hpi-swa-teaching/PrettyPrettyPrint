printing
storeOn: aStream
	
	aStream nextPut: $(.
	
	self class isVariable
		ifTrue: [
			aStream
				nextPutAll: '(' , self class name , ' basicNew: ';
				store: self basicSize;
				nextPutAll: ') ' ]
		ifFalse: [ aStream nextPutAll: self class name , ' basicNew' ].
	
	self class instVarNames
		do: [ :name |
			aStream
				nextPutAll: ' instVarNamed: ';
				store: name;
				nextPutAll: ' put: ';
				store: (self instVarNamed: name);
				nextPut: $; ].
	aStream nextPutAll: ' yourself)'