helpers-printing
printNamedMessageMultiline: aPPPMessageNode 

	"needsAdditionalIndent := aPPPMessageNode isNamedMessage not or:[aPPPMessageNode arguments size > 1].
	 ifTrue: ["
	"TODO implement edge case of test here"	
		
	self incrementIndent.
	aPPPMessageNode ifNotInCascade: [ self newLineIndent] .
	"self halt."
	self
		each: (aPPPMessageNode selector subStrings: ':')
		and: aPPPMessageNode arguments
		do: [ :messagePart :argument | self currentLine
			nextPutAll: messagePart;
			nextPutAll: ': '.
			self visitValueNode: argument ]
		separatedBy: [ self newLineIndent ].
	"needsAdditionalIndent ifTrue: ["self decrementIndent