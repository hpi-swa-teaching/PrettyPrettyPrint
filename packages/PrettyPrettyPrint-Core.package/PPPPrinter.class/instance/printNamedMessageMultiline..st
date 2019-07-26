helpers-printing
printNamedMessageMultiline: aPPPMessageNode 

	self incrementIndent.
	aPPPMessageNode ifNotInCascade: [ self newLineIndent] .
	
	self
		each: (aPPPMessageNode selector subStrings: ':')
		and: aPPPMessageNode arguments
		do: [ :selectorPart :argument |self printSelectorPartMultiline: selectorPart argument: argument ]
		separatedBy: [ self newLineIndent ].
	self decrementIndent