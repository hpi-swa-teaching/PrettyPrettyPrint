visit-node
visitBlockNode: aPPPBlockNode 

	| multiline |
	
	self 
		incrementBlockLevel;
		printBindingsOf: aPPPBlockNode.
	
	multiline := (self nodeFitsInLine: aPPPBlockNode) not.
	multiline
		ifTrue: [ self incrementIndent;
			newLineIndent ]
		ifFalse: [ self profile encloseBlockSequenceWithSpace ifTrue: [ self currentLine space ] ].
	
	aPPPBlockNode bodySequence accept: self.
	
	self profile encloseBlockSequenceWithSpace ifTrue: [ self currentLine space ].
	self currentLine nextPut: $].
	self decrementBlockLevel.
	multiline ifTrue: [ self decrementIndent ]