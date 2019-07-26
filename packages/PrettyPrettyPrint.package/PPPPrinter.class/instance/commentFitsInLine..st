helpers-printing
commentFitsInLine: aPPPToken
	
	^ (self currentLine contents size + self additionalLengthOfIndents
			+ aPPPToken content size)
		<= (self profile maxLineLength)