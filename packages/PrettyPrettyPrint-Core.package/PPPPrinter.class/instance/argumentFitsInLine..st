helpers-printing
argumentFitsInLine: anArray
	
	^ (self currentLine contents size + self additionalLengthOfIndents
			+ anArray first size + anArray second size + ' ' size)
		<= (self profile maxLineLength)