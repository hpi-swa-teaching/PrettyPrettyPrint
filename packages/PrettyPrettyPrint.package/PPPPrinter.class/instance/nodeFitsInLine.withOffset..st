helpers-printing
nodeFitsInLine: aPPPNode withOffset: aSmallInteger

	^ (self currentIndent * self indentLength  + aPPPNode length + aSmallInteger) <= (self profile maxLineLength)
		and: [aPPPNode needsStructuralLinebreak not]