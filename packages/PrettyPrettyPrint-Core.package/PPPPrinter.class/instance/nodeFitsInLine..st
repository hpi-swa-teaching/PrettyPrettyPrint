helpers-printing
nodeFitsInLine: aPPPNode
	
	^ (self currentLine contents size + self additionalLengthOfIndents
			+ aPPPNode length)
		<= (self profile maxLineLength)
			and: [ aPPPNode needsStructuralLinebreak not ]