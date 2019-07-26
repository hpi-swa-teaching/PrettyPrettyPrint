helpers-printing
printBindingsOf: aPPPBlockNode
	
	self currentLine nextPut: $[.
	aPPPBlockNode bindings
		ifNotEmpty: [ self currentLine space ];
		do: [ :name | self printBinding: name];
		ifNotEmpty: [ self currentLine nextPut: $| ]